
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
    if(_sm->battery.getBatV() <= 0.2*25.2){ //if batV drops below 20%
        State* ready_ptr = new Ready(_sm);
        return ready_ptr;       
    }
    else{
        return this;
    }

};

void Live::exitstate(){
    State::exitstate();

};