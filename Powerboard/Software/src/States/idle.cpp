
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

    if(digitalRead(PDU_EN) == HIGH){    //if PDU_EN pin externally pulled high because conn was inserted 
        key_was_inserted == true;       //bool var is true
    }

    if(digitalRead(PDU_EN) == LOW && key_was_inserted == true){ //if conn pulled out and hence internally
        Serial.println("PDU_EN is HIGH");                       //pulled low, transition to 'timeout' state
        State* timeout_ptr = new Timeout(_sm); 
        return timeout_ptr;
    }

    else{
        return this; //loopy loop
    }


};

void Idle::exitstate(){
    State::exitstate();
};

