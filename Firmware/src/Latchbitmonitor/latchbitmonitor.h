#pragma once
#include <Preferences.h>

class LatchBitMonitor{
    
    public:
        LatchBitMonitor(){};
        uint8_t getLatchBit();
        void updateLatchBit(uint8_t _latch_bit);

    private:
        uint8_t _latch_bit;
};