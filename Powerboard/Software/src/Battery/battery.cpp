#include <Arduino.h>
#include "battery.h"
#include "ricardo_pins.h"

//read batt voltage
//read charger stat

Battery::Battery()
{}


Battery::STATUS Battery::getChargingStat(){
    if(digitalRead(BattStat1) == HIGH && digitalRead(BattStat2) == LOW){
        //charge in progress
        return STATUS::IN_PROGRESS;
    }
    else if(digitalRead(BattStat1) == LOW && digitalRead(BattStat2) == HIGH){
        //charge complete
        return STATUS::CHARGE_COMPLETE;
    }
    else if(digitalRead(BattStat1) == LOW && digitalRead(BattStat2) == LOW){
        //charge suspend, timer fault, overvoltage, sleep mode, battery absent
        return STATUS::CHARGE_SUSPEND;
    }
    else{
        //error in charge status
        return STATUS::ERROR;
    }
}



float Battery::getBatV(){
    battvoltage = (analogRead(Charge)/4095)*100;
    return battvoltage;
}


bool Battery::PowerGood(){
    if(digitalRead(PG)==LOW){
        return true;
    }
    else{
        return false;
    }
}
