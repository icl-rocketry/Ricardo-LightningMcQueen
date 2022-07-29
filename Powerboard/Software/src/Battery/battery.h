#pragma once
#include <Arduino.h>

class Battery {
    public:
        uint8_t getChargingStat();
        float getBatV();
        bool PowerGood();
};