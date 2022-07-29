#include <Arduino.h>
#include "battery.h"
#include "ricardo_pins.h"

//read batt voltage
//read charger stat

Battery::Battery():
{}


uint8_t Battery::getChargingStat(){
    if(digitalRead(BattStat1)==HIGH && digitalRead(BattStat2)==LOW){
        //charge in progress
        chargingstat = 0;
    };
    elseif(digitalRead(BattStat1)==LOW && digitalRead(BattStat2)==HIGH){
        //charge complete
        chargingstat = 1;
    };
    elseif(digitalRead(BattStat1)==LOW && digitalRead(BattStat2)==LOW){
        //Charge suspend, timer fault, overvoltage, sleep mode, battery absent
        chargingstat = 2;
    };
    else{
        //error in charge status
        chargingstat = 3;
    };
    
    return chargingstat;
}



float Battery::getBatV(){
    battvoltage = (analogRead(Charge)/4095)*100;
}


bool Battery::PowerGood(){
    if(digitalRead(PG)==LOW){
        return true;
    }
    else{
        return false;
    }
}
