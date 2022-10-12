
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
    timer = millis();
};


State* Timeout::update(){
 
    // Serial.println("Timeout");
    
    if(millis() - timer > 100){
        // Serial.println("Updating timer screen");
        _sm->ledscreen.updateTimerScreen(_sm->battery.getBatV(),time_entered_state);
        timer = millis();
    }

    if(millis() - time_entered_state >= 15000){
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