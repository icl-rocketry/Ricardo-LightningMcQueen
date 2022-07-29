#include "ricardo_pins.h"
#include "global_config.h"
#include "Arduino.h"

#include "setup.h"
#include "stateMachine.h"

#include "flags.h"
#include "idle.h"

Setup::Setup(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_SETUP)
{};

void Setup::initialise(){
    State::initialise(); 
};


State* Setup::update(){
    //transtion to preflight state
    State* _idle_ptr = new Idle(_sm);
    return _idle_ptr;
};

void Setup::exitstate(){
    State::exitstate();
};