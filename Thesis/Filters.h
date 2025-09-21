#ifndef FILTERS_H
#define FILTERS_H

bool initialize_filters();

void render_bandpass(float audio_l, float audio_r);
void render_lowpass(float audio_l, float audio_r);
void render_highpass(float audio_l, float audio_r);
void render_lowandhighpass(float audio_l, float audio_r);

#endif 