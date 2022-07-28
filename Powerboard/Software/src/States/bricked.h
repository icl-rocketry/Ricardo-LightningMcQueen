#pragma once

#include "state.h"


class Bricked: public State {
  public:
    Bricked(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
};
