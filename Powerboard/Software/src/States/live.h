#pragma once

#include "state.h"


class Live: public State {
  public:
    Live(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
};
