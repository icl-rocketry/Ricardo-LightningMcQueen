#pragma once

#include "state.h"


class Setup: public State {
  public:
    Setup(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
};