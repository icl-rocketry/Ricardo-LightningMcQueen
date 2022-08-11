
#include "timeout.h"
#include "ready.h"
#include "flags.h"
#include "stateMachine.h"
#include "flags.h"

Timeout::Timeout(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_TIMEOUT)
{};

void Timeout::initialise(){
    State::initialise();
    timer_15s = time_entered_state;
};

State* Timeout::update(){
    if(millis() - timer_15s >= 15000){
        State* ready_ptr = new Ready(_sm);  //transition to 'ready' state after 15s
        return ready_ptr;                   //if no spurious cmds have been passed
    }                                       //which is checked by goLiveCommand
    else{
        return this;
    }

};

void Timeout::exitstate(){
    State::exitstate();

};