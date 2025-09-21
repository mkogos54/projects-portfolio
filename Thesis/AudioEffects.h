#ifndef AUDIOEFFECTS_H
#define AUDIOEFFECTS_H

#include <vector>

//Delay
#define DELAY_BUFFER_SIZE 44100

extern float gDelayBuffer_l[DELAY_BUFFER_SIZE];
extern float gDelayBuffer_r[DELAY_BUFFER_SIZE];

extern int gDelayBufWritePtr;
extern float gDelayAmount;
extern float gDelayFeedbackAmount;
extern float gDelayAmountPre;
extern int gDelayInSamples;


//Pitch Shift
extern float finalPitch;
extern float pitchFactor;

//Pitch Shifting variables
//extern float pitchFactor;
//std::vector<float> bufferL;
//std::vector<float> bufferR;
//extern int writeIndexL, readIndex;
//extern int writeIndexR, readIndexR;


//Functions
void delay(float audio_l, float audio_r);
void pitchShift(float sensor, float audio_l, float audio_r, float &outputL, float &outputR);


#endif 