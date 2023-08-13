#include "latchbitmonitor.h"
#include <Preferences.h>


void LatchBitMonitor::updateLatchBit(uint8_t _latch_bit){
    Preferences pref;
    pref.begin("latchbitmon");
    pref.putShort("latch_bit", _latch_bit);
    pref.end();
}

uint8_t LatchBitMonitor::getLatchBit(){
    Preferences pref;
    pref.begin("latchbitmon",true);

    if(!pref.getShort("latch_bit")){
        _latch_bit = 0;
    }
    else{
        _latch_bit = pref.getShort("latch_bit");
    }

    pref.end();

    return _latch_bit;
}