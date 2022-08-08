#pragma once
#include <Arduino.h>

class Reg3V3 {

    public:
        enum class STATUS:uint8_t{
            VREG1_OFF = 0,
            VREG2_OFF = 1,
            BOTH_REGS_OFF = 2,
            ERROR = 3
        };

        Reg3V3();   
        STATUS get3V3Stat();    //Vregs status function

};