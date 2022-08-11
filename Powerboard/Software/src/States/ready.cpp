#include "ready.h"

#include "flags.h"
#include "stateMachine.h"

#include "LEDScreen/ledscreen.h"

Ready::Ready(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_READY)
{};


void Ready::initialise(){
    State::initialise();
    //start telemetry logging here


};

State* Ready::update(){
    return this;
    
};

void Ready::exitstate(){
    State::exitstate();

};
