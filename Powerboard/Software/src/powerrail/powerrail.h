#pragma once
#include <Arduino.h>

class PowerRail{
    public:

        PowerRail(int pin, bool on_at_startup);

        void RailSetup();
        void RailUpdate();        

        float getRailVoltage();
        void RailOn();
        void RailOff();
        void RailRestart(uint32_t delay);


    private:

        uint8_t _pin;
        bool _on_at_startup;
        uint32_t _delay;
        bool restart;
        uint32_t time_restart_started;
};