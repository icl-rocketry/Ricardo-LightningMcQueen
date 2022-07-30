#include <Arduino.h>
#include "battery.h"
#include "ricardo_pins.h"

//read batt voltage
//read charger stat

Battery::Battery()
{}


uint8_t Battery::getChargingStat(){
    if(digitalRead(BattStat1)==HIGH && digitalRead(BattStat2)==LOW){
        //charge in progress
        return 0;
    }
    else if(digitalRead(BattStat1)==LOW && digitalRead(BattStat2)==HIGH){
        //charge complete
        return 1;
    }
    else if(digitalRead(BattStat1)==LOW && digitalRead(BattStat2)==LOW){
        //Charge suspend, timer fault, overvoltage, sleep mode, battery absent
        return 2;
    }
    else{
        //error in charge status
        return 3;
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
