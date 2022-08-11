#include "ready.h"

#include "flags.h"
#include "stateMachine.h"

#include "LEDScreen/ledscreen.h"

Ready::Ready(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_READY)
{};


void Ready::initialise(){
    State::initialise();
};

State* Ready::update(){
    return this;    //just waiting for goLiveCommand
};

void Ready::exitstate(){
    State::exitstate();
};
