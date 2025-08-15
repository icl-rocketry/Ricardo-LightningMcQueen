#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"
#include "Config/general_config.h"

#include "Commands/commands.h"

#include "States/idle.h"


System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
canbus(systemstatus,PinMap::TxCan,PinMap::RxCan,3),
I2C(0),
oledscreen(I2C),
latchbitmonitor(),
logicpower(PinMap::LogicSwitch, PinMap::LogicPowerLog, false, true, 2.87, 10),
deploypower(PinMap::DepPowerSwitch, PinMap::DepPowerLog, true, false, 97.6, 10),
battpower(PinMap::BattPowerLog, 97.6, 10)
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

    //power rail setup
    logicpower.RailSetup(3300, 0);
    deploypower.RailSetup(16800, 0);
    battpower.RailSetup(16800, 0);

    //initialize oled screen
    I2C.begin(PinMap::_SDA, PinMap::_SCL, GeneralConfig::I2C_FREQUENCY);
    oledscreen.setupScreen();

    oled_update_time = millis();

};


void System::systemUpdate(){
    logicpower.RailUpdate();
    deploypower.RailUpdate();
    battpower.RailUpdate();

    // if (millis() - oled_update_time > 500){
    //     oledscreen.updateLogicV(logicpower.getData().volt);
    //     oledscreen.updateDepV(deploypower.getData().volt);
    //     oledscreen.updateBattV(battpower.getData().volt, 16800);
    //     oledscreen.updateScreen(); 

    //     oled_update_time = millis();   
    // }

};