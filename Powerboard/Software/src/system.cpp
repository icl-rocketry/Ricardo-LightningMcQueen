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
canbus(systemstatus,PinMap::TxCan,PinMap::RxCan,3),
I2C(0),
oledscreen(I2C),
latchbitmonitor(),
logicpower(PinMap::LogicSwitch, PinMap::LogicPowerLog, false, true, 1, 16),
deploypower(PinMap::DepPowerSwitch, PinMap::DepPowerLog, false, false, 47, 10)
{};


void System::systemSetup(){
    
    Serial.setRxBufferSize(GeneralConfig::SerialRxSize);
    Serial.begin(GeneralConfig::SerialBaud);
   
    //intialize rnp message logger
    loggerhandler.retrieve_logger<RicCoreLoggingConfig::LOGGERS::SYS>().initialize(networkmanager);

    //initialize statemachine with idle state
    statemachine.initalize(std::make_unique<Idle>(*this));
    
    //any other setup goes here
    canbus.setup();    
    networkmanager.addInterface(&canbus);
        
    networkmanager.setNodeType(NODETYPE::HUB);
    networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,3});


    //setup pins
    pinMode(PinMap::ARMING, INPUT_PULLUP);
    //pinMode(PinMap::DepPowerLog, INPUT_PULLDOWN);
    //pinMode(PinMap::LogicPowerLog, INPUT_PULLDOWN);

    //power rail setup
    deploypower.RailSetup(16800, 0);
    logicpower.RailSetup(3300, 0);

    //initialize oled screen
    I2C.begin(PinMap::_SDA, PinMap::_SCL, GeneralConfig::I2C_FREQUENCY);
    oledscreen.setupScreen();

};


void System::systemUpdate(){
    logicpower.RailUpdate();
    deploypower.RailUpdate();

    oledscreen.updateDepV(deploypower.getData().volt);
    oledscreen.updateLogicV(logicpower.getData().volt);
    oledscreen.updateScreen();
};