#pragma once

#include <Arduino.h>

enum class SYSTEM_FLAG:uint16_t{
    //state flags
    STATE_DEBUG = (1 << 0), 
    STATE_IDLE = (1 << 1),
    STATE_TIMEOUT = (1 << 2),
    STATE_ARMED = (1 << 3),
    STATE_BRICKED = (1 << 4),
    STATE_SETUP = (1 << 5),
    STATE_GROUNDSTATION_GATEWAY = (1 << 6),
    //flags
    DEBUG = (1 << 7),
    //critical messages 
    ERROR_I2C = (1 << 8),
    ERROR_SERIAL = (1 << 9),
    ERROR_LORA = (1 << 10),
    ERROR_LPC = (1 << 11),
    ERROR_3V3REG = (1 << 12),
    ERROR_BATTSTAT = (1 << 13),
    ERROR_CAN = (1 << 14)

    
    
};


