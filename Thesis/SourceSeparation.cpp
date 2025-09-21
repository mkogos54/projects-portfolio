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
int ssHopSize = 128;			// How often we calculate a window
float ssScaleFactor = 0.25;			// How much to scale the output, based on window type and overlap
float ssCutoffLow = .4;
float ssCutoffHigh = .4;					// SS cutoff amplitude

float real;
float imag;

float amplitude = 0;

// Circular buffer and pointer for assembling a window of samples for Source Separations
const int ssBufferSize = 16384;

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
int gOutputBufferWritePointerOne_l = ssFftSize + 2 * ssHopSize;
int gOutputBufferReadPointerOne_l = 0;

std::vector<float> gOutputBufferTwo_l;
int gOutputBufferWritePointerTwo_l = ssFftSize + 2 * ssHopSize;
int gOutputBufferReadPointerTwo_l = 0;

std::vector<float> gOutputBufferOne_r;
int gOutputBufferWritePointerOne_r = ssFftSize + 2 * ssHopSize;
int gOutputBufferReadPointerOne_r = 0;

std::vector<float> gOutputBufferTwo_r;
int gOutputBufferWritePointerTwo_r = ssFftSize + 2 * ssHopSize;
int gOutputBufferReadPointerTwo_r = 0;


// Buffer to hold the windows for FFT analysis and synthesis
std::vector<float> gAnalysisWindowBuffer;
std::vector<float> gSynthesisWindowBuffer;
std::vector<float> gBinFrequencies(gFftSize/2 + 1);

//static std::vector<float> lastInputPhases(gFftSize); //hold phases from input signal
//static std::vector<float> lastOutputPhases(gFftSize);	// and output (synthesised) signal


// Thread for FFT processing
AuxiliaryTask ssFftLeft;
int gCachedInputBufferPointer_l = 0;
void process_fft_left(void *);

AuxiliaryTask ssFftRight;
int gCachedInputBufferPointer_r = 0;
void process_fft_right(void *);


bool initialize_SS(BelaContext, *context) {
	
	// Set up the FFT and its buffers
	ssFft.setup(ssFftSize);
	gInputBuffer_l.resize(ssBufferSize);
	gOutputBufferOne_l.resize(ssBufferSize);
	gOutputBufferTwo_l.resize(ssBufferSize);
	gInputBuffer_r.resize(ssBufferSize);
	gOutputBufferOne_r.resize(ssBufferSize);
	gOutputBufferTwo_r.resize(ssBufferSize);

		
	// Calculate the window
	gAnalysisWindowBuffer.resize(ssFftSize);
	gSynthesisWindowBuffer.resize(ssFftSize);

	for(int n = 0; n < gFftSize; n++) {
		// Hann window
		gAnalysisWindowBuffer[n] = 0.5f * (1.0f - cosf(2.0 * M_PI * n / (float)(ssFftSize - 1)));
		gSynthesisWindowBuffer[n] = gAnalysisWindowBuffer[n];
	}
	
	// Precompute the bin frequencies
	for(int n = 0; n <= ssFftSize/2; n++) {
		gBinFrequencies[n] = 2.0 * M_PI * (float)n / (float)ssFftSize;
	}
	
	// Set up the thread for the FFT
	ssFftLeft = Bela_createAuxiliaryTask(process_fft_left, 80, "bela-fft-left");
	ssFftRight = Bela_createAuxiliaryTask(process_fft_right, 80, "bela-fft-right");

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
    	if (amplitude < ssCutoffNear) {
			ssFft.fdr(n) = real;
			ssFft.fdi(n) = imag;
		} else {
			ssFft.fdr(n) = 0;
			ssFft.fdi(n) = 0; }
	
	// Also store the complex conjugate in the upper half of the spectrum
	if(n > 0 && n < ssFftSize / 2) {
		ssFft.fdr(ssFftSize - n) = ssFft.fdr(n);
		ssFft.fdi(ssFftSize - n) = -ssFft.fdi(n);	
	}
}

// Function to process samples below the threshold
void fftFarThreshold(int n) {
    
    if (amplitude > ssCutoffFar) {
		ssFft.fdr(n) = real;
			ssFft.fdi(n) = imag;
		} else {
			ssFft.fdr(n) = 0;
			ssFft.fdi(n) = 0; }
	
	// Also store the complex conjugate in the upper half of the spectrum
	if(n > 0 && n < ssFftSize / 2) {
		ssFft.fdr(ssFftSize - n) = ssFft.fdr(n);
		ssFft.fdi(ssFftSize - n) = -ssFft.fdi(n);	
	}
}


void process_fft(void (*processRange)(int), std::vector<float> const& inBuffer, unsigned int inPointer, std::vector<float>& outBuffer, unsigned int outPointer)
{
	static std::vector<float> fftCurrentOut(ssFftSize / 2);	// Current FFT energy
	static std::vector<float> unwrappedBuffer(ssFftSize);
	
	// Copy buffer into FFT input
	for(int n = 0; n < ssFftSize; n++) {
		// Calculate the circular buffer index
		int circularBufferIndex = (inPointer + n - ssFftSize + ssBufferSize) % ssBufferSize;
		unwrappedBuffer[n] = inBuffer[circularBufferIndex] * gAnalysisWindowBuffer[n];
	}

	// Process the FFT based on the time domain input
	ssFft.fft(unwrappedBuffer);
	
	// Analyse the lower half of the spectrum. The upper half is just
	// the complex conjugate and does not contain any unique information
	for(int n = 0; n <= ssFftSize/2; n++) {
		
		//REAL/IMAGINARY TO AMP PHASE OPTION #1
		// Turn real and imaginary components into amplitude and phase
		real = gFft.fdr(n);
		imag = gFft.fdi(n);
		
		amplitude = map(sqrtf(real * real + imag * imag), 0, .002, 0, 1);
		
		processRange(n);

		// Run the inverse FFT
		ssFft.ifft();
	
		// Add timeDomainOut into the output buffer
		for(int n = 0; n < ssFftSize; n++) {
			int circularBufferIndex = (outPointer + n - ssFftSize + ssBufferSize) % ssBufferSize;
			outBuffer[circularBufferIndex] += ssFft.td(n) * gSynthesisWindowBuffer[n];
	}
}
	


// This function runs in an auxiliary task on Bela, calling process_fft
void process_fft_left(void *)
{
	process_fft(fftNearThreshold, gInputBuffer_l, gCachedInputBufferPointer_l, gOutputBufferOne_l, gOutputBufferWritePointerOne_l);
	gOutputBufferWritePointerOne_l = (gOutputBufferWritePointerOne_l + ssHopSize) % ssBufferSize; 	// Update the output buffer write pointer to start at the next hop
	
	process_fft(fftFarThreshold, gInputBuffer_l, gCachedInputBufferPointer_l,gOutputBufferTwo_l, gOutputBufferWritePointerTwo_l);
	gOutputBufferWritePointerTwo_l = (gOutputBufferWritePointerTwo_l + ssHopSize) % ssBufferSize;
}

void process_fft_right(void *)
{
	process_fft(fftNearThreshold, gInputBuffer_r, gCachedInputBufferPointer_r, gOutputBufferOne_r, gOutputBufferWritePointerOne_r);
	gOutputBufferWritePointerOne_r = (gOutputBufferWritePointerOne_r + ssHopSize) % ssBufferSize; 	// Update the output buffer write pointer to start at the next hop
	
	process_fft(fftFarThreshold, gInputBuffer_r, gCachedInputBufferPointer_r,gOutputBufferTwo_r, gOutputBufferWritePointerTwo_r);
	gOutputBufferWritePointerTwo_r = (gOutputBufferWritePointerTwo_r + ssHopSize) % ssBufferSize;
}


void render_SS_Fft(float audio_l, float audio_r)
{
		// Store the samples ("audio[i]") in buffers for the FFT
		// Increment the pointers and when full window has been assembled, call process_fft()
		gInputBuffer_l[gInputBufferPointer_l++] = audio_l;
		gInputBuffer_r[gInputBufferPointer_r++] = audio_r;
		
		if(gInputBufferPointer_l >= ssBufferSize) { //wrap the circular buffer
			gInputBufferPointer_l = 0;
		}
		if(gInputBufferPointer_r >= ssBufferSize) {
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
		
		// Scale the output down by the overlap factor (e.g. how many windows overlap per sample?)
		streamOne_l *= ssScaleFactor;
		streamTwo_l *= ssScaleFactor;
		streamOne_r *= ssScaleFactor;
		streamTwo_r *= ssScaleFactor;
	
		// Increment the read pointer in the output cicular buffer
		gOutputBufferReadPointerOne_l++;
		gOutputBufferReadPointerTwo_l++;
		gOutputBufferReadPointerOne_r++;
		gOutputBufferReadPointerTwo_r++;

		if(gOutputBufferReadPointerOne_l >= ssBufferSize)
			gOutputBufferReadPointerOne_l = 0;
			
		if(gOutputBufferReadPointerTwo_l >= ssBufferSize)
			gOutputBufferReadPointerTwo_l = 0;
			
		if(gOutputBufferReadPointerOne_r >= ssBufferSize)
			gOutputBufferReadPointerOne_r = 0;
			
		if(gOutputBufferReadPointerTwo_r >= ssBufferSize)
			gOutputBufferReadPointerTwo_r = 0;
		
		// Increment the hop counter and start a new FFT if we've reached the hop size
		if(++gHopCounter_l >= ssHopSize) {
			gHopCounter_l = 0;
			
			gCachedInputBufferPointer_l = gInputBufferPointer_l;
			Bela_scheduleAuxiliaryTask(ssFftLeft);
		}
		
		if(++gHopCounter_r >= ssHopSize) {
			gHopCounter_r = 0;
			
			gCachedInputBufferPointer_r = gInputBufferPointer_r;
			Bela_scheduleAuxiliaryTask(ssFftRight);
		}
}

