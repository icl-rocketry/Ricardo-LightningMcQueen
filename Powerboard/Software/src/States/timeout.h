#pragma once

#include "state.h"
#include "LEDScreen/ledscreen.h"
#include "Battery/battery.h"


class Timeout: public State {
  public:
    Timeout(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();

    private:
    uint32_t timer_15s;
    uint32_t timer;
};
