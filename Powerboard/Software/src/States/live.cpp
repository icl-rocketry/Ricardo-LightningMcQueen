
#include "live.h"

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
    
    Serial.print("live");
    return 0;

};

void Live::exitstate(){
    State::exitstate();

};