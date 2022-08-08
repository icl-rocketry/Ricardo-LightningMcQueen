
#include "idle.h"
#include "timeout.h"

#include "ricardo_pins.h"
#include "flags.h"
#include "stateMachine.h"

#include "LEDScreen/ledscreen.h"


Idle::Idle(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();
    //start telemetry logging here


};

State* Idle::update(){
    if(PDU_EN == HIGH){
        State* timeout_ptr = new Timeout(_sm);
        return timeout_ptr;
    }else{
        return this; //loopy loop
    }


};

void Idle::exitstate(){
    State::exitstate();

};

