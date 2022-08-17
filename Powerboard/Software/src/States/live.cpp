
#include "live.h"
#include "ready.h"

#include "flags.h"
#include "stateMachine.h"

Live::Live(stateMachine* sm):
State(sm,SYSTEM_FLAG::STATE_LIVE)
{};

void Live::initialise(){
    State::initialise();
    digitalWrite(LPC_24V, LOW);
};

State* Live::update(){
    return this;
};

void Live::exitstate(){
    State::exitstate();

};