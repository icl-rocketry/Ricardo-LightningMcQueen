#include <Arduino.h>
#include "battery.h"
#include "ricardo_pins.h"

//read batt voltage
//read charger stat

Battery::Battery()
{}


Battery::STATUS Battery::getChargingStat(){

    if(digitalRead(BattStat1) == HIGH && digitalRead(BattStat2) == LOW){
        return STATUS::IN_PROGRESS;         //charge in progress
    }

    else if(digitalRead(BattStat1) == LOW && digitalRead(BattStat2) == HIGH){
        return STATUS::CHARGE_COMPLETE;     //charge complete
    }

    else if(digitalRead(BattStat1) == LOW && digitalRead(BattStat2) == LOW){
        return STATUS::CHARGE_SUSPEND;      //charge suspend, timer fault, overvoltage, sleep mode, battery absent
    }

    else{
        return STATUS::ERROR;       //error in charge status
    }
}



float Battery::getBatV(){
    battvoltage = (analogRead(Charge)/4095)*25.2;   //25.2V at full charge
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
