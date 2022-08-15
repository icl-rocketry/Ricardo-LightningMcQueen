
#include "live.h"
#include "ready.h"

#include "flags.h"
#include "stateMachine.h"

Live::Live(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_IDLE)
{};

void Live::initialise(){
    State::initialise();
    //start telemetry logging here


};

State* Live::update(){
    return this;
};

void Live::exitstate(){
    State::exitstate();

};