#pragma once

#include <libriccore/riccoresystem.h>

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"

#include "commands/commands.h"
#include "latchbitmonitor/latchbitmonitor.h"
#include "Wire.h"
#include "oledscreen/oledscreen.h"

class System : public RicCoreSystem<System,SYSTEM_FLAG,Commands::ID>
{
    public:

        System();
        
        void systemSetup();

        void systemUpdate();

        TwoWire I2C;
        OLEDScreen oledscreen;
        LatchBitMonitor latchbitmonitor;

    // private:


};