#pragma once
#include "flags.h"
#include "Storage/systemstatus.h"
#include "stateMachine.h"
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


class LEDScreen{
  public:

    LEDScreen(stateMachine* sm, SystemStatus& systemstatus, Battery& battery, TwoWire& wire):
    _sm(sm),
    _systemstatus(systemstatus),
    _battery(battery),
    display(SCREEN_WIDTH, SCREEN_HEIGHT,&wire, OLED_RESET){};

    void setupScreen();
    void updateDefaultScreen(Battery::STATUS chargingStatus, float batteryVoltage, bool adpConn);
    void updateTimerScreen(float batteryVoltage, uint32_t timer15s);
  
  private:
    stateMachine* _sm;  
    SystemStatus& _systemstatus;    
    Battery& _battery;

    static constexpr int SCREEN_WIDTH = 128;
    static constexpr int SCREEN_HEIGHT = 32;
    static constexpr int SCREEN_ADDRESS = 0x3C;
    static constexpr int OLED_RESET = -1;
    Adafruit_SSD1306 display;

};

