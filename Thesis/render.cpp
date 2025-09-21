//my main device file

//TODO next
//use fft-multiple-effects as a testing file 
//Find a threshold I like and set it static in this file --> 90 = cutoff high, 15 --> cutoff low when mapped 0, .002, 0, 1
//use bandpass filter to make clearer, try using the same algorithm for finding the peak frequency
//as I did in the pitch shift smoother
//modify record function to be longer and start 10 seconds after boot

#include <Bela.h>
#include <cmath>
#include "EnvironmentCalculations.h"
#include <libraries/OnePole/OnePole.h>
#include "SensorRead.h"
#include "AudioEffects.h"
#include "SourceSeparation.h"
#include <RecordWav.h>
#include <algorithm>


//volume knob
int gAudioFramesPerAnalogFrame;
float gInputGain;
float gOutputGain;
const int kInput = 0;
const int kOutput = 1;
float micLevel;
float hpLevel;



//Pitch Shifting variables
extern float pitchFactor;
extern std::vector<float> bufferL;
extern std::vector<float> bufferR;
extern int readIndexL;
extern int readIndexR;
extern int writeIndexL;
extern int writeIndexR;
float shifted_l;
float shifted_r;


//Auxiliary task to read knobs
AuxiliaryTask knobTask;		
void readAudioFunctions(void*);
int readCount = 0;			// How long until we read again
int readIntervalSamples = 0; // How many samples between reads
int readInterval = 200;


//separate streams
float streamOne_l;
float streamTwo_l;
float streamOne_r;
float streamTwo_r;


bool setup(BelaContext *context, void *userData)
{

	//sensors enable
	initialize_sensors(context);
	
	//Source separation enable
	initialize_SS();
	
	//recording enable
	initialize_recording();
	
	// Check if analog channels are enabled
	if(context->analogFrames == 0 || context->analogFrames > context->audioFrames) {
		rt_printf("Error: this example needs analog enabled, with 4 or 8 channels\n");
		return false;
	}
	
	// Useful calculations
	if(context->analogFrames)
		gAudioFramesPerAnalogFrame = context->audioFrames / context->analogFrames;
	
	knobTask = Bela_createAuxiliaryTask(readAudioFunctions, 80, "bela-levels");
	
	readIntervalSamples = context->audioSampleRate / readInterval;
	
	return true;
}



void render(BelaContext *context, void *userData)
{
	static int counter = 0;
	float pressure;
	float temperature;
	float humidity;
	
	float out_l;
	float out_r;
	
	
	for(unsigned int n = 0; n < context->audioFrames; n++) {
		
		//ambient light data call
		float ambientLight = temt6000_read(context);
		//rt_printf("ambient light: %f\n", ambientLight);
		
		//weather data call	
		if(++counter >= context->audioSampleRate/2) { // Triggers ~every 1/2 second
			counter = 0;
			bme280_read(pressure, temperature, humidity);
			/*
			rt_printf("Pressure[Pa]: %f", pressure);
			rt_printf(", Temperature [C]: %f", temperature);
			rt_printf(", Humidity [perc]: %f", humidity);
			rt_printf("\n");
			*/
			//rt_printf("Pitch Factor: %f", pitchFactor);
	    	//rt_printf(", Final Pitch: %f\n", finalPitch);
	    	//rt_printf("gain: %f", gInputGain);
	    	//rt_printf(", vol: %f\n", gOutputGain);
		}
		
		//volume knob call
		if(gAudioFramesPerAnalogFrame && !(n % gAudioFramesPerAnalogFrame)) {
			micLevel = analogRead(context, n/gAudioFramesPerAnalogFrame, kInput);
			hpLevel = analogRead(context, n/gAudioFramesPerAnalogFrame, kOutput);

			gInputGain = map(micLevel, 0, 3.3/4.096, -60, 20);
			gOutputGain = map(hpLevel, 0, 3.3/4.096, -40, 10);
		
		}


        // Read audio inputs
        out_l = audioRead(context,n,0);
        out_r = audioRead(context,n,1);
		
		if(++readCount >= readIntervalSamples) {
			readCount = 0;
	
			Bela_scheduleAuxiliaryTask(knobTask);
		}
		
		//Split foreground/background
		//render_SS_Fft(out_l, out_r);
		
		//Delay function
		delay(out_l, out_r);
	    out_l += gDelayBuffer_l[(gDelayBufWritePtr-gDelayInSamples+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE] * gDelayAmount;
	    out_r += gDelayBuffer_r[(gDelayBufWritePtr-gDelayInSamples+DELAY_BUFFER_SIZE)%DELAY_BUFFER_SIZE] * gDelayAmount;
		
		
		//pitch shift function
		//pitchShift(ambientLight, streamOne_l, streamOne_r, shifted_l, shifted_r);
		
		
		//make louder (actually fix this later)
		streamTwo_l *= 3;
		streamTwo_r *= 3;
		//streamOne_l *= 3;
		//streamOne_r *= 3;
		shifted_l *= 4;
		shifted_r *= 4;
		
		
		record_quad(streamOne_l, streamTwo_l, streamOne_r, streamTwo_r);
		
		
		// Write the audio to the output
		audioWrite(context, n, 0, shifted_l);
		//audioWrite(context, n, 0, streamOne_l);
		audioWrite(context, n, 0, streamTwo_l);
		audioWrite(context, n, 1, shifted_r);
		//audioWrite(context, n, 1, streamOne_r);
		audioWrite(context, n, 1, streamTwo_r);
		audioWrite(context, n, 0, out_l);
		audioWrite(context, n, 1, out_r);
	}	
}

// Auxiliary task to read the I2C board
void readAudioFunctions(void*)
{
	//Bela_setPgaGain(gInputGain, -1);
	//Bela_setHeadphoneLevel(gOutputGain);
	Bela_setAudioInputGain(-1, gInputGain);
	Bela_setHpLevel	(-1, gOutputGain);
}

void cleanup(BelaContext *context, void *userData) {
    	cleanup_recordWAV ();
}