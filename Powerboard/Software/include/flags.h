#pragma once

#include <Arduino.h>

enum class SYSTEM_FLAG:uint32_t{

    //state flags
    STATE_DEBUG = (1 << 0), 
    STATE_IDLE = (1 << 1),
    STATE_TIMEOUT = (1 << 2),
    STATE_READY = (1 << 3),
    STATE_LIVE = (1 << 4),    
    STATE_BRICKED = (1 << 5),
    STATE_SETUP = (1 << 6),
    STATE_GROUNDSTATION_GATEWAY = (1 << 7),

    //flags
    DEBUG = (1 << 8),

    //critical messages 
    ERROR_I2C = (1 << 9),
    ERROR_SERIAL = (1 << 10),
    ERROR_LORA = (1 << 11),
    ERROR_LPC = (1 << 12),
    ERROR_3V3REG = (1 << 13),
    ERROR_BATTSTAT = (1 << 14),
    ERROR_CAN = (1 << 15),
    ERROR_DISPLAY = (1 << 16)

};


