#ifndef SOURCESEPARATION_H
#define SOURCESEPARATION_H

#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>

bool initialize_SS();

extern Gui gGui;
extern GuiController gGuiController;

extern float streamOne_l;
extern float streamTwo_l;
extern float streamOne_r;
extern float streamTwo_r;

void render_SS_Fft(float audio_l, float audio_r);

#endif 