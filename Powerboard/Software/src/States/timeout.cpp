
#include "timeout.h"
#include "armed.h"
#include "flags.h"
#include "stateMachine.h"
#include "flags.h"

Timeout::Timeout(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_TIMEOUT)
{};

void Timeout::initialise(){
    State::initialise();
    timer_15s = time_entered_state;
    //start telemetry logging here

};

State* Timeout::update(){
    if(millis() - timer_15s >= 15000){
        State* armed_ptr = new Armed(_sm);
        return armed_ptr;
    }
    else{
        return this;
    }

};

void Timeout::exitstate(){
    State::exitstate();

};