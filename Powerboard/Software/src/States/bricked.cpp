
#include "bricked.h"

#include "flags.h"
#include "stateMachine.h"

Bricked::Bricked(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_BRICKED)
{};

void Bricked::initialise(){
    State::initialise();
    //start telemetry logging here

};

State* Bricked::update(){
    return this;

};

void Bricked::exitstate(){
    State::exitstate();

};

