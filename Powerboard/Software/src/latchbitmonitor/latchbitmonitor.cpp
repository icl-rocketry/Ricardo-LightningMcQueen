#include "latchbitmonitor.h"


void LatchBitMonitor::updateLatchBit(uint8_t _latch_bit){
    pref.putShort("latch_bit", _latch_bit);
}

uint8_t LatchBitMonitor::getLatchBit(){

    if(!pref.getShort("latch_bit")){
        _latch_bit = 0;
    }
    else{
        _latch_bit = pref.getShort("latch_bit");
    }

    return _latch_bit;
}