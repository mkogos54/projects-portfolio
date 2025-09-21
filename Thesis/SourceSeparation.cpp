//source separation functions

#include <Bela.h>
#include <cmath>
#include <cstring>
#include <vector>
#include <algorithm>
#include <libraries/Fft/Fft.h>
#include <libraries/Biquad/Biquad.h>
#include <SourceSeparation.h>
#include <Filters.h>

// FFT-related variables
Fft gFft;					// FFT processing object
const int gFftSize = 1024;	// FFT window size in samples
int gHopSize = 128;			// How often we calculate a window
float gScaleFactor = 0.25;			// How much to scale the output, based on window type and overlap
float gCutoffLow = 90;
float gCutoffHigh = 15;					// SS cutoff amplitude
float real;
float imag;

float amplitude = 0;

// Circular buffer and pointer for assembling a window of samples for Source Separations
const int gBufferSize = 16384;

std::vector<float> gInputBuffer_l;
int gInputBufferPointer_l = 0;
int gHopCounter_l = 0;

std::vector<float> gInputBuffer_r;
int gInputBufferPointer_r = 0;
int gHopCounter_r = 0;

// Container to hold the unwrapped values
static std::vector<float> unwrappedBuffer(gFftSize);	


// Circular buffers for source separation (collecting the output of the overlap-add process)
std::vector<float> gOutputBufferOne_l;
int gOutputBufferWritePointerOne_l = gFftSize + 2 * gHopSize;
int gOutputBufferReadPointerOne_l = 0;

std::vector<float> gOutputBufferTwo_l;
int gOutputBufferWritePointerTwo_l = gFftSize + 2 * gHopSize;
int gOutputBufferReadPointerTwo_l = 0;

std::vector<float> gOutputBufferOne_r;
int gOutputBufferWritePointerOne_r = gFftSize + 2 * gHopSize;
int gOutputBufferReadPointerOne_r = 0;

std::vector<float> gOutputBufferTwo_r;
int gOutputBufferWritePointerTwo_r = gFftSize + 2 * gHopSize;
int gOutputBufferReadPointerTwo_r = 0;


// Buffer to hold the windows for FFT analysis and synthesis
std::vector<float> gAnalysisWindowBuffer;
std::vector<float> gSynthesisWindowBuffer;
std::vector<float> gBinFrequencies(gFftSize/2 + 1);

//static std::vector<float> lastInputPhases(gFftSize); //hold phases from input signal
//static std::vector<float> lastOutputPhases(gFftSize);	// and output (synthesised) signal


// Thread for FFT processing
AuxiliaryTask gFftLeft;
int gCachedInputBufferPointer_l = 0;
void process_fft_left(void *);

AuxiliaryTask gFftRight;
int gCachedInputBufferPointer_r = 0;
void process_fft_right(void *);


bool initialize_SS() {
	
	// Set up the FFT and its buffers
	gFft.setup(gFftSize);
	gInputBuffer_l.resize(gBufferSize);
	gOutputBufferOne_l.resize(gBufferSize);
	gOutputBufferTwo_l.resize(gBufferSize);
	gInputBuffer_r.resize(gBufferSize);
	gOutputBufferOne_r.resize(gBufferSize);
	gOutputBufferTwo_r.resize(gBufferSize);

		
	// Calculate the window
	gAnalysisWindowBuffer.resize(gFftSize);
	gSynthesisWindowBuffer.resize(gFftSize);

	for(int n = 0; n < gFftSize; n++) {
		// Hann window
		gAnalysisWindowBuffer[n] = 0.5f * (1.0f - cosf(2.0 * M_PI * n / (float)(gFftSize - 1)));
		gSynthesisWindowBuffer[n] = gAnalysisWindowBuffer[n];
	}
	
	// Precompute the bin frequencies
	for(int n = 0; n <= gFftSize/2; n++) {
		gBinFrequencies[n] = 2.0 * M_PI * (float)n / (float)gFftSize;
	}
	
	// Set up the thread for the FFT
	gFftLeft = Bela_createAuxiliaryTask(process_fft_left, 80, "bela-fft-left");
	gFftRight = Bela_createAuxiliaryTask(process_fft_right, 80, "bela-fft-right");

	return true;
}

// Wrap the phase to the range -pi to pi
float wrapPhase(float phaseIn)
{
    if (phaseIn >= 0)
        return fmodf(phaseIn + M_PI, 2.0 * M_PI) - M_PI;
    else
        return fmodf(phaseIn - M_PI, -2.0 * M_PI) + M_PI;	
}



// Function to process samples above the threshold
void fftNearThreshold(int n) {
    	if (amplitude < gCutoffHigh) {

			// Also store the complex conjugate in the upper half of the spectrum
			//if(n > 0 && n < gFftSize / 2) {
			gFft.fdr(gFftSize - n) = real;
			gFft.fdi(gFftSize - n) = imag;
			//} 
		} else {
			
		gFft.fdr(n) = 0;
		gFft.fdi(n) = 0;
		
		}// Example: reduce amplitude by half
}

// Function to process samples below the threshold
void fftFarThreshold(int n) {
    
    if (amplitude > gCutoffLow) {
		//if (amplitude > 3) {

			// Also store the complex conjugate in the upper half of the spectrum
			//if(n > 0 && n < gFftSize / 2) {
				gFft.fdr(gFftSize - n) = real;
				gFft.fdi(gFftSize - n) = imag;
				//} 
			} else {
			
			gFft.fdr(n) = 0;
			gFft.fdi(n) = 0;
		}
}


void process_fft(void (*processRange)(int), std::vector<float> const& inBuffer, unsigned int inPointer, std::vector<float>& outBuffer, unsigned int outPointer)
{
	static std::vector<float> fftCurrentOut(gFftSize / 2);	// Current FFT energy
	static std::vector<float> unwrappedBuffer(gFftSize);
	
	// Copy buffer into FFT input
	for(int n = 0; n < gFftSize; n++) {
		// Use modulo arithmetic to calculate the circular buffer index
		int circularBufferIndex = (inPointer + n - gFftSize + gBufferSize) % gBufferSize;
		unwrappedBuffer[n] = inBuffer[circularBufferIndex] * gAnalysisWindowBuffer[n];
	}

	// Process the FFT based on the time domain input
	gFft.fft(unwrappedBuffer);
	
	// Analyse the lower half of the spectrum. The upper half is just
	// the complex conjugate and does not contain any unique information
	for(int n = 0; n <= gFftSize/2; n++) {
		
		//REAL/IMAGINARY TO AMP PHASE OPTION #1
		// Turn real and imaginary components into amplitude and phase
		real = gFft.fdr(n);
		imag = gFft.fdi(n);
		//amplitude = std::hypotf(real, imag);
		amplitude = map(sqrtf(real * real + imag * imag), 0, .002, 0, 1);
		
		//amplitude = 10 * std::abs(gFft.fda(n)); //r in polar
		//fftCurrentOut[n] = gFft.fda(n);

		
	/*	
		FIND PEAK OPTION #1:
		//Calculate the recent peak of each frequency bin using smoothing by averaging over adjacent frequency bins
		float localAvg = 0;
		int dataPoints = 0;
		for(int k = std::max(0, n-5); k <= std::min(n + 5, gFftSize / 2); k++) {
			localAvg += fftCurrentOut[k];
			dataPoints++;
		}
		localAvg /= (float)dataPoints;
		
		localCutoff = localAvg;
		
		//access localAvg somehow
		
		FIND PEAK OPTION #2:
		// Find peak bin:
            int peakBin = 0;
            float maxMag = 0.0;
            for(int i = 0; i < kFFTSize/2; i++){
                float mag = sqrt(fftOutputReal[i] * fftOutputReal[i] + fftOutputImag[i] * fftOutputImag[i]);
                if(mag > maxMag) {
                    maxMag = mag;
                    peakBin = i;
                }
          */
          
		processRange(n);
	}
	
	// Run the inverse FFT
	gFft.ifft();
	
		// Add timeDomainOut into the output buffer
	for(int n = 0; n < gFftSize; n++) {
		int circularBufferIndex = (outPointer + n - gFftSize + gBufferSize) % gBufferSize;
		outBuffer[circularBufferIndex] += gFft.td(n) * gSynthesisWindowBuffer[n];
	}
}
	


// This function runs in an auxiliary task on Bela, calling process_fft
void process_fft_left(void *)
{
	process_fft(fftNearThreshold, gInputBuffer_l, gCachedInputBufferPointer_l, gOutputBufferOne_l, gOutputBufferWritePointerOne_l);
	gOutputBufferWritePointerOne_l = (gOutputBufferWritePointerOne_l + gHopSize) % gBufferSize; 	// Update the output buffer write pointer to start at the next hop
	
	process_fft(fftFarThreshold, gInputBuffer_l, gCachedInputBufferPointer_l,gOutputBufferTwo_l, gOutputBufferWritePointerTwo_l);
	gOutputBufferWritePointerTwo_l = (gOutputBufferWritePointerTwo_l + gHopSize) % gBufferSize;
}

void process_fft_right(void *)
{
	process_fft(fftNearThreshold, gInputBuffer_r, gCachedInputBufferPointer_r, gOutputBufferOne_r, gOutputBufferWritePointerOne_r);
	gOutputBufferWritePointerOne_r = (gOutputBufferWritePointerOne_r + gHopSize) % gBufferSize; 	// Update the output buffer write pointer to start at the next hop
	
	process_fft(fftFarThreshold, gInputBuffer_r, gCachedInputBufferPointer_r,gOutputBufferTwo_r, gOutputBufferWritePointerTwo_r);
	gOutputBufferWritePointerTwo_r = (gOutputBufferWritePointerTwo_r + gHopSize) % gBufferSize;
}


void render_SS_Fft(float audio_l, float audio_r)
{
		// Store the samples ("audio[i]") in buffers for the FFT
		// Increment the pointers and when full window has been 
		// assembled, call process_fft()
		gInputBuffer_l[gInputBufferPointer_l++] = audio_l; //audio_l
		gInputBuffer_r[gInputBufferPointer_r++] = audio_r; //audio_r
		
		if(gInputBufferPointer_l >= gBufferSize) { //wrap the circular buffer
			gInputBufferPointer_l = 0;
		}
		if(gInputBufferPointer_r >= gBufferSize) {
			gInputBufferPointer_r = 0;
		}
		
		// Get the output sample from the output buffer
		streamOne_l = gOutputBufferOne_l[gOutputBufferReadPointerOne_l];
		streamTwo_l = gOutputBufferTwo_l[gOutputBufferReadPointerTwo_l];
		streamOne_r = gOutputBufferOne_r[gOutputBufferReadPointerOne_r];
		streamTwo_r = gOutputBufferTwo_r[gOutputBufferReadPointerTwo_r];
		
		// Then clear the output sample in the buffer so it is ready for the next overlap-add
		gOutputBufferOne_l[gOutputBufferReadPointerOne_l] = 0;
		gOutputBufferTwo_l[gOutputBufferReadPointerTwo_l] = 0;
		gOutputBufferOne_r[gOutputBufferReadPointerOne_r] = 0;
		gOutputBufferTwo_r[gOutputBufferReadPointerTwo_r] = 0;
		
		//out_l = (streamOne_l * streamTwo_l) / 2;
		//out_r = (streamOne_r * streamTwo_r) / 2;
		
		// Scale the output down by the overlap factor (e.g. how many windows overlap per sample?)
		streamOne_l *= gScaleFactor;
		streamTwo_l *= gScaleFactor;
		streamOne_r *= gScaleFactor;
		streamTwo_r *= gScaleFactor;
		
		//bandpass filter
		render_highpass(streamOne_l, streamOne_r);
		render_bandpass(streamTwo_l, streamTwo_r);
	
		// Increment the read pointer in the output cicular buffer
		gOutputBufferReadPointerOne_l++;
		gOutputBufferReadPointerTwo_l++;
		gOutputBufferReadPointerOne_r++;
		gOutputBufferReadPointerTwo_r++;

		if(gOutputBufferReadPointerOne_l >= gBufferSize)
			gOutputBufferReadPointerOne_l = 0;
			
		if(gOutputBufferReadPointerTwo_l >= gBufferSize)
			gOutputBufferReadPointerTwo_l = 0;
			
		if(gOutputBufferReadPointerOne_r >= gBufferSize)
			gOutputBufferReadPointerOne_r = 0;
			
		if(gOutputBufferReadPointerTwo_r >= gBufferSize)
			gOutputBufferReadPointerTwo_r = 0;
		
		// Increment the hop counter and start a new FFT if we've reached the hop size
		if(++gHopCounter_l >= gHopSize) {
			gHopCounter_l = 0;
			
			gCachedInputBufferPointer_l = gInputBufferPointer_l;
			Bela_scheduleAuxiliaryTask(gFftLeft);
		}
		
		if(++gHopCounter_r >= gHopSize) {
			gHopCounter_r = 0;
			
			gCachedInputBufferPointer_r = gInputBufferPointer_r;
			Bela_scheduleAuxiliaryTask(gFftRight);
		}
}

