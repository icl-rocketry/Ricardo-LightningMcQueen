
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
};

State* Idle::update(){
    Serial.println("Idle");

    if(PDU_EN == HIGH){ //if PDU enable connector pulled out
        State* timeout_ptr = new Timeout(_sm);  //transition to 'timeout' state
        return timeout_ptr;
    }else{
        return this; //loopy loop
    }


};

void Idle::exitstate(){
    State::exitstate();
};

