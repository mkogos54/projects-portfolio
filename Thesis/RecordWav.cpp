#include <Bela.h>
#include <RecordWav.h>

#define SAMPLERATE 44100
#define CHANNELS 2
//WAV recording
std::vector<std::vector<float>> gOutputsL;
std::vector<std::vector<float>> gOutputsR;
std::vector<std::vector<float>>gOutputs2L;
std::vector<std::vector<float>>gOutputs2R;
std::string gFilenameOutputsL = "outputsL.wav";
std::string gFilenameOutputsR = "outputsR.wav";
std::string gFilenameOutputs2L = "outputs2L.wav";
std::string gFilenameOutputs2R = "outputs2R.wav";
const double gDurationSec = 120; // how many seconds to record.
unsigned int gWrittenFramesL = 0; // how many frame have actually been written to gOutputs
unsigned int gWrittenFramesR = 0;
unsigned int gWrittenFrames2L = 0;
unsigned int gWrittenFrames2R = 0;

bool initialize_recording() {
// pre-allocate all the memory needed to store the audio data
	unsigned int numFrames = SAMPLERATE * gDurationSec;
	gOutputsL.resize(CHANNELS);
	gOutputsR.resize(CHANNELS);
	gOutputs2L.resize(CHANNELS);
	gOutputs2R.resize(CHANNELS);
	// If we have too many channels or too many frames to store, we may run out of RAM and
	// the program will fail to start.
	try {
		for(auto& c : gOutputsL)
			c.resize(numFrames);
		for(auto& c : gOutputsR)
			c.resize(numFrames);
		for(auto& c : gOutputs2L)
			c.resize(numFrames);
		for(auto& c : gOutputs2R)
			c.resize(numFrames);	
	} catch (std::exception e) {
	fprintf(stderr, "Error while allocating memory. Maybe you are asking to record too many frames and/or too many channels\n");
	}
	return true;
}

void record_stereo(float audio_l, float audio_r) {
	//Wav record 
        gOutputsL[0][gWrittenFramesL] = audio_l;
        gOutputsR[1][gWrittenFramesR] = audio_r;
        
		++gWrittenFramesL;
		++gWrittenFramesR;
		if(gWrittenFramesL >= gOutputsL[0].size() && gWrittenFramesR >= gOutputsR[0].size()) {
			// if we have processed enough samples an we have filled the pre-allocated buffer,
			// stop the program
			Bela_requestStop();
			return;
		}
}

void record_quad(float audio1_l, float audio2_l, float audio1_r, float audio2_r) {
	//Wav record 
        gOutputsL[0][gWrittenFramesL] = audio1_l;
        gOutputsR[1][gWrittenFramesR] = audio1_r;
        gOutputs2L[0][gWrittenFrames2L] = audio2_l;
        gOutputs2R[1][gWrittenFrames2R] = audio2_r;
        
		++gWrittenFramesL;
		++gWrittenFramesR;
		++gWrittenFrames2L;
		++gWrittenFrames2R;
		if(gWrittenFramesL >= gOutputsL[0].size() && gWrittenFramesR >= gOutputsR[0].size()
			&& gWrittenFrames2L >= gOutputs2L[0].size() && gWrittenFrames2R >= gOutputs2R[0].size()) {
			// if we have processed enough samples an we have filled the pre-allocated buffer,
			// stop the program
			Bela_requestStop();
			return;
		}
}

void cleanup_recordWAV () {
// ensure we don't write any more frames than those that have actually been processed
	// this way if the program is stopped by the user before its natural end we don't end up
	// with a lot of empty samples at the end of each file.
	for(auto& i : gOutputsL)
		i.resize(gWrittenFramesL);
	for(auto& o : gOutputsR)
		o.resize(gWrittenFramesR);
	for(auto& o : gOutputs2L)
		o.resize(gWrittenFrames2L);
	for(auto& o : gOutputs2R)
		o.resize(gWrittenFrames2R);
	AudioFileUtilities::write(gFilenameOutputsL, gOutputsL, SAMPLERATE);
	AudioFileUtilities::write(gFilenameOutputsR, gOutputsR, SAMPLERATE);
	AudioFileUtilities::write(gFilenameOutputs2L, gOutputs2L, SAMPLERATE);
	AudioFileUtilities::write(gFilenameOutputs2R, gOutputs2R, SAMPLERATE);
}
