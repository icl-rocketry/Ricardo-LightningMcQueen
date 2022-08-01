#pragma once
#include <Arduino.h>



class Battery {
    public:
        enum class STATUS:uint8_t{
            IN_PROGRESS = 0,
            CHARGE_COMPLETE = 1,
            CHARGE_SUSPEND = 2,
            ERROR = 3
        };

        Battery();
        STATUS getChargingStat();
        float getBatV();
        bool PowerGood();
        float battvoltage;
        
};