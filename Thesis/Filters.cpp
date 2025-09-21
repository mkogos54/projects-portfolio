#include <libraries/Biquad/Biquad.h>

//I'd like this to run at the frequency with the highest amplitude in each stream.
//ok so i thibk i have to call this function in proceess_fft() and actually, it may be the key to
//making my source separation cleaner.
//do this after I get the gui working/replace it


//Biquad
Biquad bandpassL;
Biquad bandpassR;
Biquad lowpassL;
Biquad lowpassR;
Biquad highpassL;
Biquad highpassR;

float bpCutoff = 500; //adjust this to amplitude detector
float gFilterQ = 1.0;
float kSampleRate = 44100; //get this from the context

float lpCutoff = 2000;
float hpCutoff = 100;


bool initialize_filters() {
	
	//define bandpass parameters
	Biquad::Settings BPsettings{
			.fs = kSampleRate,
			.cutoff = bpCutoff,
			.type = Biquad::bandpass,
			.q = gFilterQ,
			.peakGainDb = 7,
			};
			
	bandpassL.setup(BPsettings);
	BPsettings.cutoff = bpCutoff;
	
	bandpassR.setup(BPsettings);
	BPsettings.cutoff = bpCutoff;
	
	//define lowpass parameters
	Biquad::Settings LPsettings{
			.fs = kSampleRate,
			.cutoff = lpCutoff,
			.type = Biquad::lowpass,
			//.q = gFilterQ,
			.peakGainDb = 7,
			};
			
	lowpassL.setup(LPsettings);
	LPsettings.cutoff = lpCutoff;
	
	lowpassR.setup(LPsettings);
	LPsettings.cutoff = lpCutoff;
	
	//define highpass parameters
	Biquad::Settings HPsettings{
			.fs = kSampleRate,
			.cutoff = hpCutoff,
			.type = Biquad::highpass,
			//.q = gFilterQ,
			.peakGainDb = 7,
			};
			
	highpassL.setup(HPsettings);
	HPsettings.cutoff = hpCutoff;
	
	highpassR.setup(HPsettings);
	HPsettings.cutoff = hpCutoff;
	
	return true;
}

void render_bandpass(float audio_l, float audio_r, float cutoff) {
	
	//biquad goes here
		bandpassL.setFc(bpCutoff);
		audio_l = bandpassL.process(audio_l);
		
		bandpassR.setFc(bpCutoff);
		audio_r = bandpassR.process(audio_r);
}

void render_lowpass(float audio_l, float audio_r, float cutoff) {
	
	//biquad goes here
		lowpassL.setFc(lpCutoff);
		audio_l = lowpassL.process(audio_l);
		
		lowpassR.setFc(lpCutoff);
		audio_r = lowpassR.process(audio_r);
}

void render_highpass(float audio_l, float audio_r, float cutoff) {
	
	//biquad goes here
		highpassL.setFc(hpCutoff);
		audio_l = highpassL.process(audio_l);
		
		highpassR.setFc(hpCutoff);
		audio_r = highpassR.process(audio_r);
}

void render_lowandhighpass(float audio_l, float audio_r, float Hicutoff, float LoCutoff) {
	hpCutoff = HiCutoff;
	lpCutoff = LoCutoff
	
	//biquad goes here
		highpassL.setFc(hpCutoff);
		lowpassL.setFc(lpCutoff);
		audio_l = highpassL.process(audio_l);
		audio_l = lowpassL.process(audio_l);
		
		highpassR.setFc(hpCutoff);
		lowpassL.setFc(lpCutoff);
		audio_r = highpassR.process(audio_r);
		audio_r = lowpassR.process(audio_r);
}
