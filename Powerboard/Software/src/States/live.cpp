
#include "live.h"
#include "armed.h"

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
    if(_sm->battery.getBatV() <= 20){
        State* armed_ptr = new Armed(_sm);
        return armed_ptr;       
    }
    else{
        return this;
    }

};

void Live::exitstate(){
    State::exitstate();

};