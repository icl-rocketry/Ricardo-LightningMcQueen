#include "armed.h"

#include "flags.h"
#include "stateMachine.h"

#include "LEDScreen/ledscreen.h"

Armed::Armed(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_ARMED)
{};


void Armed::initialise(){
    State::initialise();
    //start telemetry logging here


};

State* Armed::update(){
    return this;
    
};

void Armed::exitstate(){
    State::exitstate();

};
