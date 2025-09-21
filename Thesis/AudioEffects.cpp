//all my audio effects
#include <Bela.h>
#include <math.h>
#include <AudioEffects.h>
#include <algorithm>
#include <vector>
#include <optional>

float gDelayBuffer_l[DELAY_BUFFER_SIZE] = {0};
float gDelayBuffer_r[DELAY_BUFFER_SIZE] = {0};


//Delay Variables
int gDelayBufWritePtr = 0; // Write pointer
float gDelayAmount = 1.0; // Amount of delay
float gDelayFeedbackAmount = 0.999; // Amount of feedback
float gDelayAmountPre = 0.75; // Level of pre-delay input
int gDelayInSamples = 22050; // Amount of delay in samples

//Pitch Shifting variables
float pitchFactor = 1.2;
std::vector<float> bufferL(4096);
std::vector<float> bufferR(4096);
int writeIndexL = 0, readIndexL = 0;
int writeIndexR = 0, readIndexR = 0;

//Global Variables
extern int gAudioFramesPerAnalogFrame;
extern float gInverseSampleRate;
extern float gPhase;

//Tempt6000 variables
float finalPitch;

// Butterworth coefficients for low-pass filter @ 8000Hz
float gDel_a0 = 0.1772443606634904;
float gDel_a1 = 0.3544887213269808;
float gDel_a2 = 0.1772443606634904;
float gDel_a3 = -0.5087156198145868;
float gDel_a4 = 0.2176930624685485;

// Previous two input and output values for each channel (required for applying the filter)
float gDel_x1_l = 0;
float gDel_x2_l = 0;
float gDel_y1_l = 0;
float gDel_y2_l = 0;
float gDel_x1_r = 0;
float gDel_x2_r = 0;
float gDel_y1_r = 0;
float gDel_y2_r = 0;


float roundValue(float value) {
    return ((int)(value * 10)) / 10.0;
}

float BrightIndoorsAdj(float value) {
	float pitchFactorCompensated = value;
	
	if (pitchFactorCompensated < 0.8f) {
		pitchFactorCompensated = .5f; // Or any range that avoids the artifact

	} else if (pitchFactorCompensated >= 0.8f && pitchFactorCompensated < 1.2f) {
		pitchFactorCompensated = 1.0f; // Or any range that avoids the artifact
	
		
	} else if (pitchFactorCompensated >= 1.2f) {
		pitchFactorCompensated = 1.5f; // Or any range that avoids the artifact
	}
	return pitchFactorCompensated;
}

float DimIndoorsAdj(float value) {
	float pitchFactorCompensated = value;
	
	if (pitchFactorCompensated < 0.6f) {
		pitchFactorCompensated = .5f; // Or any range that avoids the artifact

	} else if (pitchFactorCompensated >= 0.6f && pitchFactorCompensated < 1.1f) {
		pitchFactorCompensated = 1.0f; // Or any range that avoids the artifact
	
		
	} else if (pitchFactorCompensated >= 1.1f) {
		pitchFactorCompensated = 1.5f; // Or any range that avoids the artifact
	}
	return pitchFactorCompensated;
}

void delay(float audio_l, float audio_r, std::optional<float> sensor = std::nullopt)
{
	
    gDelayFeedbackAmount = map(sensor, 0, 70, .7, .999);
    
    // Increment delay buffer write pointer
    if(++gDelayBufWritePtr>DELAY_BUFFER_SIZE)
        gDelayBufWritePtr = 0;

    // Calculate the sample that will be written into the delay buffer...
    // 1. Multiply the current (dry) sample by the pre-delay gain level (set above)
    // 2. Get the previously delayed sample from the buffer, multiply it by the feedback gain and add it to the current sample
    float del_input_l = (gDelayAmountPre * audio_l + gDelayBuffer_l[(gDelayBufWritePtr-gDelayInSamples+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE] * gDelayFeedbackAmount);
    float del_input_r = (gDelayAmountPre * audio_r + gDelayBuffer_r[(gDelayBufWritePtr-gDelayInSamples+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE] * gDelayFeedbackAmount);

    // ...but let's not write it into the buffer yet! First we need to apply the low-pass filter!

    // Remember these values so that we can update the filter later, as we're about to overwrite it
    float temp_x_l = del_input_l;
    float temp_x_r = del_input_r;

    // Apply the butterworth filter (y = a0*x0 + a1*x1 + a2*x2 + a3*y1 + a4*y2)
    del_input_l = gDel_a0*del_input_l
                + gDel_a1*gDel_x1_l
                + gDel_a2*gDel_x2_l
                + gDel_a3*gDelayBuffer_l[(gDelayBufWritePtr-1+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE]
                + gDel_a4*gDelayBuffer_l[(gDelayBufWritePtr-2+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE];

    // Update previous values for next iteration of filter processing
    gDel_x2_l = gDel_x1_l;
    gDel_x1_l = temp_x_l;
    gDel_y2_l = gDel_y1_l;
    gDel_y1_l = del_input_l;
	
	
    // Repeat process for the right channel
    del_input_r = gDel_a0*del_input_r
                + gDel_a1*gDel_x1_r
                + gDel_a2*gDel_x2_r
                + gDel_a3*gDelayBuffer_r[(gDelayBufWritePtr-1+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE]
                + gDel_a4*gDelayBuffer_r[(gDelayBufWritePtr-2+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE];

    gDel_x2_r = gDel_x1_r;
    gDel_x1_r = temp_x_r;
    gDel_y2_r = gDel_y1_r;
    gDel_y1_r = del_input_r;

    //  Now we can write it into the delay buffer
    gDelayBuffer_l[gDelayBufWritePtr] = del_input_l;
    gDelayBuffer_r[gDelayBufWritePtr] = del_input_r;
    
		
	}
	
void pitchShift(float sensor, float audio_l, float audio_r, float &outputL, float &outputR) {
	        
	    pitchFactor = map(sensor, 0.0, 1.0, .5, 1.5);
    	//finalPitch = roundValue(pitchFactor);
		//finalPitch = BrightIndoorsAdj(pitchFactor);
		finalPitch = DimIndoorsAdj(pitchFactor);
        
        bufferL[writeIndexL] = audio_l;
        bufferR[writeIndexR] = audio_r;
        
        writeIndexL = (writeIndexL + 1) % bufferL.size();
        writeIndexR = (writeIndexR + 1) % bufferR.size();

        readIndexL = (int)(writeIndexL * finalPitch) % bufferL.size();
        readIndexR = (int)(writeIndexR * finalPitch) % bufferR.size();
        
    	outputL = bufferL[readIndexL];
        outputR = bufferR[readIndexR];
       
}
