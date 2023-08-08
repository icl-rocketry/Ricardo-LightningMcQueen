#include "ready.h"
#include "idle.h"

#include <memory>

#include <libriccore/fsm/state.h>
#include <libriccore/systemstatus/systemstatus.h>
#include <libriccore/commands/commandhandler.h>
#include <libriccore/riccorelogging.h>

#include "config/systemflags_config.h"
#include "config/types.h"

#include "system.h"
#include <Preferences.h>

// Preferences pref;


Ready::Ready(System& system):
State(SYSTEM_FLAG::STATE_READY,system.systemstatus),
_system(system)
{};

void Ready::initialize()
{
    Types::CoreTypes::State_t::initialize(); // call parent initialize first!

    //update oled state text

};

Types::CoreTypes::State_ptr_t Ready::update()
{
    //Serial.println("Ready");
    
    //if arming pin is inserted, reset latch bit to 0 and return to idle
    if (digitalRead(PinMap::ARMING) == HIGH){
        latch_bit = 0;
        _system.latchbitmonitor.updateLatchBit(latch_bit);
        return std::make_unique<Idle>(_system);
    }
    else{
        return nullptr; //waiting for ON or OFF command
    }
};

void Ready::exit()
{
    Types::CoreTypes::State_t::exit(); // call parent exit last!
};