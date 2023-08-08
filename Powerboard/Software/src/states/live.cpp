#include "live.h"
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


Live::Live(System& system):
State(SYSTEM_FLAG::STATE_LIVE,system.systemstatus),
_system(system)
{};

void Live::initialize()
{
    Types::CoreTypes::State_t::initialize(); // call parent initialize first!

    //deployment power goes ON
    digitalWrite(PinMap::DepPowerSwitch, LOW);

    //latch bit set to 1
    latch_bit = 1;
    _system.latchbitmonitor.updateLatchBit(latch_bit);

};

Types::CoreTypes::State_ptr_t Live::update()
{
    if (digitalRead(PinMap::ARMING) == HIGH){
        latch_bit = 0;
        _system.latchbitmonitor.updateLatchBit(latch_bit);
        return std::make_unique<Idle>(_system);
    }
    else{
        return nullptr; //waiting for ON or OFF command
    }
};

void Live::exit()
{
    Types::CoreTypes::State_t::exit(); // call parent exit last!
};