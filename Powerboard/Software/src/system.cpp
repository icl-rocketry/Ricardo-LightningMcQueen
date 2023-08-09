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
latchbitmonitor()
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
    pinMode(PinMap::LogicSwitch, OUTPUT);
    pinMode(PinMap::DepPowerSwitch, OUTPUT);
    pinMode(PinMap::ARMING, INPUT_PULLDOWN);
    pinMode(PinMap::DepPowerLog, INPUT_PULLDOWN);
    pinMode(PinMap::LogicPowerLog, INPUT_PULLDOWN);
    
    //logic power on
    digitalWrite(PinMap::LogicSwitch, LOW);

    //initialize oled screen
    I2C.begin(PinMap::_SDA, PinMap::_SCL, GeneralConfig::I2C_FREQUENCY);
    oledscreen.setupScreen();

    //initialize power rail logging
   

};


void System::systemUpdate(){};