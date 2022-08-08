#include <Arduino.h>
#include "reg3v3.h"
#include "ricardo_pins.h"


Reg3V3::Reg3V3()
{}

 Reg3V3::STATUS Reg3V3::get3V3Stat(){

    if(digitalRead(Stat1_3V3) == LOW && digitalRead(Stat2_3V3) == HIGH){
        return STATUS::VREG1_OFF; //VReg 1 is off
    }

    else if(digitalRead(Stat1_3V3) == HIGH && digitalRead(Stat2_3V3) == LOW){
        return STATUS::VREG2_OFF; //VReg 2 is off
    }

    else if(digitalRead(Stat1_3V3) == LOW && digitalRead(Stat2_3V3) == LOW){
        return STATUS::BOTH_REGS_OFF; //both VRegs are off
    }

    else{
        return STATUS::ERROR;
    }
}