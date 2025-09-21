#ifndef RECORDWAV_H
#define RECORDWAV_H

#include <libraries/AudioFile/AudioFile.h>
#include <libraries/AudioFile/AudioFile.h>
#include <cmath>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <string>

bool initialize_recording();
void record_stereo(float audio_l, float audio_r);
void record_quad(float audio1_l, float audio2_l, float audio1_r, float audio2_r);
void cleanup_recordWAV();

#endif