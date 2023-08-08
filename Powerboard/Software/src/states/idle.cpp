#include "idle.h"
#include "ready.h"
#include "live.h"

#include <memory>

#include <libriccore/fsm/state.h>
#include <libriccore/systemstatus/systemstatus.h>
#include <libriccore/commands/commandhandler.h>
#include <libriccore/riccorelogging.h>

#include "config/systemflags_config.h"
#include "config/types.h"
#include "config/pinmap_config.h"

#include "system.h"

#include <Preferences.h>


Idle::Idle(System &system):
State(SYSTEM_FLAG::STATE_IDLE,system.systemstatus),
_system(system)
{};

void Idle::initialize()
{
    Types::CoreTypes::State_t::initialize(); // call parent initialize first!

    //retrieve latch bit
    latch_bit = _system.latchbitmonitor.getLatchBit();

    //update oled state text
};

Types::CoreTypes::State_ptr_t Idle::update()
{
    //Serial.println("Idle");

    //if arming pin has been inserted, set bool to true
    if (digitalRead(PinMap::ARMING) == HIGH && RBF_was_inserted == false){
        RBF_was_inserted = true;
    }

    //if arming pin has been removed and latch is set to 0, transition to ready
    if (digitalRead(PinMap::ARMING) == LOW && RBF_was_inserted == true && latch_bit == 0){
        return std::make_unique<Ready>(_system);
    }

    //if arming pin has been removed and latch is set to 1, skip to live
    if (digitalRead(PinMap::ARMING) == LOW && RBF_was_inserted == true && latch_bit == 1){
        return std::make_unique<Live>(_system);
    }
    
    else{
        return nullptr;
    }
};

void Idle::exit()
{
    Types::CoreTypes::State_t::exit(); // call parent exit last!
};