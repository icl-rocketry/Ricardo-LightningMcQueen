#pragma once

#include <libriccore/riccoresystem.h>
#include <libriccore/networkinterfaces/can/canbus.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"

#include "Commands/commands.h"
#include "Latchbitmonitor/latchbitmonitor.h"
#include "Wire.h"
#include "Oledscreen/oledscreen.h"
#include "Powerrail/powerrail.h"

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
        PowerRail battpower;


    private:

        uint64_t oled_update_time;


};