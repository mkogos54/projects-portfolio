//I2c_SensorRead
//Code that recieves data from 2 I2c Sensors and saves them to global variables


#include <Bela.h>
#include "BME280I2C.h"
#include "BME280.h"
#include <cmath>
#include "EnvironmentCalculations.h"
#include <libraries/OnePole/OnePole.h>
#include "SensorRead.h"

BME280I2C bme280;    // Default : forced mode, standby time = 1000 ms
		             // Oversampling = pressure ×1, temperature ×1, humidity ×1, filter off
OnePole sensorFilter;

//BME280 variables
float temp, pres, hum;
float tempAdjust = 28.0;

//TEMT6000 variables
float amLight;
float smoothedValue;
float previousAmlightValue = 0.0;

//context variables
extern int gAudioFramesPerAnalogFrame;
extern float gInverseSampleRate;
float gPhase;


AuxiliaryTask i2cBMETask;		// Auxiliary task to read bme280
void readBME280(void*);
int counter = 0;			// How long until we read again...


bool initialize_sensors(BelaContext *context)
{
	
	if(!bme280.begin()){
		rt_printf("Error initialising bme280\n");
		return false;
	}
	
	i2cBMETask = Bela_createAuxiliaryTask(readBME280, 80, "bela-bme280");
	/*
	// Check if analog channels are enabled
	if(context->analogFrames == 0 || context->analogFrames > context->audioFrames) {
		rt_printf("Error: analog channels disabled\n");
		return false;
	}

	// Useful calculations
	if(context->analogFrames)
		gAudioFramesPerAnalogFrame = context->audioFrames / context->analogFrames;
	gInverseSampleRate = 1.0 / context->audioSampleRate;
	gPhase = 0.0;
	*/
	//onepole setup
	sensorFilter.setup(1, context->audioSampleRate);
	
	return true;

}


void bme280_read(float& pressure, float& temperature, float& humidity)
{
	Bela_scheduleAuxiliaryTask(i2cBMETask);
	
	float tempF = (temp*1.8)  + 32.0 - tempAdjust;
	pressure = pres;
	temperature = tempF;
	humidity = hum;
}

float temt6000_read(BelaContext *context) {
	
	for(unsigned int n = 0; n < context->audioFrames; n++) {
        if(gAudioFramesPerAnalogFrame && !(n % gAudioFramesPerAnalogFrame)) {

        if(context->audioFrames > 0) {
	        // Read channel 0 from the first analog frame in this block
	        amLight = analogRead(context, 0, 2);
        	}
	        
       		float alpha = 0.8; // Adjust smoothness (higher = smoother)
			smoothedValue = alpha * smoothedValue + (1 - alpha) * amLight;
			
       		return smoothedValue;
		}
	}
	
	return 1.0f;
}

// Auxiliary task to read the BME280 board
void readBME280(void*)
{
	bme280.update();
	bme280.read(pres, temp, hum);
	usleep(10);
	
}
