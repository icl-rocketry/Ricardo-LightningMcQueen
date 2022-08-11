#pragma once

#include "state.h"


class Ready: public State {
  public:
    Ready(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
};
