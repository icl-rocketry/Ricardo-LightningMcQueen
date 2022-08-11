
#include "bricked.h"

#include "flags.h"
#include "stateMachine.h"

Bricked::Bricked(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_BRICKED)
{};

void Bricked::initialise(){
    State::initialise();
};

State* Bricked::update(){
    return this;    //nothing happens when bricked, waiting for reboot cmd

};

void Bricked::exitstate(){
    State::exitstate();

};

