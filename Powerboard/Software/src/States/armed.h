#pragma once

#include "state.h"


class Armed: public State {
  public:
    Armed(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
};
