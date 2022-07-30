#pragma once
#include <Arduino.h>

class Battery {
    public:
        Battery();
        uint8_t getChargingStat();
        float getBatV();
        bool PowerGood();
        float battvoltage;
        
};