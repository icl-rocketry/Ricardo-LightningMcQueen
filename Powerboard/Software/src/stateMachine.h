/* 
Code used to process states, and the transitions between them, contains parent class for states

Written by the Electronics team, Imperial College London Rocketry
*/

#ifndef STATEMACHINE_H
#define STATEMACHINE_H

#include "Arduino.h"

#include "States/state.h"
#include "States/timeout.h"

#include "Storage/systemstatus.h"
#include "Storage/logController.h"
#include "Battery/battery.h"
#include "3V3 Regulators/reg3v3.h"


#include "Network/interfaces/usb.h"
#include "Network/interfaces/radio.h"
#include "Network/interfaces/canbus.h"

#include "rnp_networkmanager.h"
#include "rnp_routingtable.h"

#include "Commands/commandHandler.h"

#include "SPI.h"
#include "Wire.h"

#include "LEDScreen/ledscreen.h"


class stateMachine {
  
  public:
    stateMachine();// The constructor
    //functions
    void initialise(State* initStatePtr);
    void update();
    void changeState(State* newStatePtr);

   
    SPIClass vspi;
    SPIClass hspi;
    TwoWire I2C;

    USB usbserial;
    Radio radio;
    CanBus canbus;
    RnpNetworkManager networkmanager;
    CommandHandler commandhandler;

    LogController logcontroller;
    SystemStatus systemstatus;
    Timeout timeout;
    Battery battery;
    Reg3V3 reg3V3;
    LEDScreen ledscreen;
   
  private:
    State* _currStatePtr;
    uint32_t timer;


};

#endif
