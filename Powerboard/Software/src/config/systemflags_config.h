#pragma once

#include <stdint.h>
#include <type_traits>

enum class SYSTEM_FLAG:uint32_t{
    //state flags
    STATE_IDLE = (1 << 0),
    STATE_READY = (1 << 1),
    STATE_LIVE = (1 << 2),

    //flags
    DEBUG = (1 << 7),
    ERROR_DISPLAY = (1 << 8),
    ERROR_CAN = (1 << 9),
    //critical messages 
    ERROR_SERIAL = (1 << 10),
    //if rocket is inverted
    ERROR_ORIENTATION = (1 << 23),
    //warn
    WARN_BATT = (1 << 24),
    //FLIGHTPHASES 
    FLIGHTPHASE_BOOST = (1 << 25),
    FLIGHTPHASE_COAST = (1 << 26),
    FLIGHTPHASE_APOGEE = (1 << 27)
    
};

using system_flag_t = uint32_t;

