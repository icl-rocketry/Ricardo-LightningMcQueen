#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"
#include "config/general_config.h"

#include "commands/commands.h"

#include "states/idle.h"


System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
I2C(0),
oledscreen(I2C),
latchbitmonitor(),
logicpower(PinMap::LogicSwitch, true),
deploypower(PinMap::DepPowerSwitch, false)
{};


void System::systemSetup(){
    
    Serial.setRxBufferSize(GeneralConfig::SerialRxSize);
    Serial.begin(GeneralConfig::SerialBaud);
   
    //intialize rnp message logger
    loggerhandler.retrieve_logger<RicCoreLoggingConfig::LOGGERS::SYS>().initialize(networkmanager);

    //initialize statemachine with idle state
    statemachine.initalize(std::make_unique<Idle>(*this));
    
    //any other setup goes here

    //setup pins
    pinMode(PinMap::ARMING, INPUT_PULLDOWN);
    pinMode(PinMap::DepPowerLog, INPUT_PULLDOWN);
    pinMode(PinMap::LogicPowerLog, INPUT_PULLDOWN);

    //deployment rail setup
    deploypower.RailSetup();

    //logic rail setup
    logicpower.RailSetup();

    //initialize oled screen
    I2C.begin(PinMap::_SDA, PinMap::_SCL, GeneralConfig::I2C_FREQUENCY);
    oledscreen.setupScreen();

    //initialize power rail logging
   
};


void System::systemUpdate(){
    logicpower.RailUpdate();
};