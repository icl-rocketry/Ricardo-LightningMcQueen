#pragma once

#include <libriccore/riccoresystem.h>
#include <libriccore/networkinterfaces/can/canbus.h>

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"

#include "commands/commands.h"
#include "latchbitmonitor/latchbitmonitor.h"
#include "Wire.h"
#include "oledscreen/oledscreen.h"
#include "powerrail/powerrail.h"

class System : public RicCoreSystem<System,SYSTEM_FLAG,Commands::ID>
{
    public:

        System();
        
        void systemSetup();

        void systemUpdate();

        CanBus<SYSTEM_FLAG> canbus;

        TwoWire I2C;
        OLEDScreen oledscreen;
        LatchBitMonitor latchbitmonitor;
        PowerRail logicpower;
        PowerRail deploypower;


    // private:


};