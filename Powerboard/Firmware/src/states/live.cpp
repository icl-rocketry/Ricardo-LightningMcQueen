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
    _system.deploypower.RailOn();

    //latch bit set to 1
    latch_bit = 1;
    _system.latchbitmonitor.updateLatchBit(latch_bit);

    _system.commandhandler.enableCommands({Commands::ID::GoReady});

    //update oled state text
    _system.oledscreen.updateState("LIVE");

};

Types::CoreTypes::State_ptr_t Live::update()
{

    // if (millis()-prevLogMessageTime > 1000)
    // {
    //     RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Live");
    //     prevLogMessageTime = millis();
    // }

    if (digitalRead(PinMap::ARMING) == LOW){
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
    _system.commandhandler.disableCommands({Commands::ID::GoReady});
    Types::CoreTypes::State_t::exit(); // call parent exit last!
};