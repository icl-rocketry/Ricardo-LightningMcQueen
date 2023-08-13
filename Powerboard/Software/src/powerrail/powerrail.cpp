#include "powerrail.h"
#include "config/pinmap_config.h"
#include <libriccore/riccorelogging.h>
#include <Arduino.h>


PowerRail::PowerRail(int pin, bool on_at_startup):
_pin(pin),
_on_at_startup(on_at_startup)
{}

void PowerRail::RailSetup(){
    pinMode(_pin,OUTPUT);

    if (_on_at_startup == true){
        digitalWrite(_pin, LOW);    
    }
    if (_on_at_startup == false){
        digitalWrite(_pin, HIGH);
    }

}

void PowerRail::RailOn(){
    digitalWrite(_pin, LOW);
}

void PowerRail::RailOff(){
    digitalWrite(_pin, HIGH);
}

// float PowerRail::getRailVoltage(){

// }

void PowerRail::RailRestart(uint32_t delay){
    _delay = delay;
    restart = true;
    time_restart_started = millis();
}

void PowerRail::RailUpdate(){

    if (restart == true){
        if (millis() - time_restart_started < _delay){
            RailOff();
        }
        
        if (millis() - time_restart_started > _delay){
            RailOn();
            restart = false;
        }
    }

}