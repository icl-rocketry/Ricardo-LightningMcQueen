#pragma once

#include "state.h"


class Idle: public State {
public:
    Idle(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();

private:
    bool key_was_inserted = false;

};
