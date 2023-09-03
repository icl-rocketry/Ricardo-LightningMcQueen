#pragma once

#include <stdint.h>
#include <unordered_map>
#include <functional>
#include <initializer_list>

#include <libriccore/commands/commandhandler.h>
#include <librnp/rnp_packet.h>

#include "Config/forward_decl.h"
#include "Commands/commands.h"


namespace Commands
{
    enum class ID : uint8_t
    {
        NoCommand = 0,
        GoReady = 1,       
        GoLive = 2,
        RestartLogic = 3,
        LMQTelemCommand = 4,
        Free_Ram = 250
        //transition from live to ready (reset latch bit as well)
        //logic restart with argument (arg = delay between off and on in ms)
        //telemetry packet with rail voltages and system flags
    };

    inline std::initializer_list<ID> defaultEnabledCommands = {ID::Free_Ram, ID::RestartLogic, ID::LMQTelemCommand};

    inline std::unordered_map<ID, std::function<void(ForwardDecl_SystemClass &, const RnpPacketSerialized &)>> command_map{
        {ID::Free_Ram, FreeRamCommand},
        {ID::GoLive, GoLiveCommand},
        {ID::GoReady, GoReadyCommand},
        {ID::RestartLogic, RestartLogicCommand},
        {ID::LMQTelemCommand, LMQTelemCommand}};

};