#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <string>
#include "ledscreen.h"

#include "3V3 Regulators/reg3v3.h"

#include "Commands/commandHandler.h"
#include "Commands/commandpacket.h"
#include "Storage/systemstatus.h"
#include "flags.h"



void LEDScreen::setupScreen(){

    // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally (from test code)
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
        _systemstatus.new_message(SYSTEM_FLAG::ERROR_DISPLAY);
    }
    else{

        //Display iclr logo for 2s on startup
        init_time = millis();
        if(millis() - init_time < timer2s){
            display.drawBitmap(48, 0, iclr_logo.data(), 32, 32, WHITE);
            display.display();            
        }

    }

}



void LEDScreen::updateDefaultScreen(Battery::STATUS chargingStatus, float batteryVoltage, bool adpConn){

    //If error in screen setup or 2s have not passed, returns to calling function
    if(_systemstatus.flag_triggered(SYSTEM_FLAG::ERROR_DISPLAY) || millis() - init_time < timer2s){
        return;
        }

    else{

        display.clearDisplay();
        display.setTextSize(1);             // Normal 1:1 pixel scale
        display.setTextColor(SSD1306_WHITE);        // Draw white text
        display.setCursor(0,0);             // Start at top-left corner


        //Line of text stating current system state
        if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_IDLE)){ 
            display.println("STATE: IDLE");
            }

        else if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_READY)){
            display.println("STATE: READY");            
            }
        
        else if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_LIVE)){
            display.println("STATE: LIVE");            
            }

        else if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_BRICKED)){
            display.println("STATE: BRICKED");            
            }

        else{
            display.println("STATE: ERROR");            
        }



        //Line of text stating charger connected/not
        if(adpConn){       
            display.println("ADAPTER CONN: YES");
        }
        else{
            display.println("ADAPTER CONN: NO");
        }



        //Line of text stating charging status
        switch(chargingStatus) {    

            case Battery::STATUS::IN_PROGRESS:
            {
                display.println("CHARGING: IN PROGRESS");
                break;
            }

            case Battery::STATUS::CHARGE_COMPLETE:
            {
                display.println("CHARGING: COMPLETE");
                break;
            }

            case Battery::STATUS::CHARGE_SUSPEND:
            {
                display.println("CHARGING: SUSPENDED"); 
                break;  
            }

            default:
                display.println("CHARGING: ERROR");

        }



        //Line of text stating battery voltage
        display.println(("BATTERY VOLTAGE: " + std::to_string(batteryVoltage)).c_str());



        //Battery icon in top right corner
        display.drawBitmap(113, 0, empty_batt.data(), 6, 14, WHITE);    //outline of battery icon as bitmap
        chargebars = (batteryVoltage/25.2)*10;  //number of bars of charge out of 10
        display.fillRect(CHARGE_AREA_START_X, CHARGE_AREA_START_Y, chargebars, 4, WHITE);   //filling in battery icon with rectangular bars



        display.display();
    }
}



void LEDScreen::updateTimerScreen(float batteryVoltage){

    //If error in screen setup or 2s have not passed, returns to calling function
    if(_systemstatus.flag_triggered(SYSTEM_FLAG::ERROR_DISPLAY) || millis() - timer2s < 2000){
        return;
    }
        
    else{

        display.clearDisplay();
        display.setTextSize(1);             // Normal 1:1 pixel scale
        display.setTextColor(SSD1306_WHITE);        // Draw white text
        display.setCursor(0,0);             // Start at top-left corner



        display.println("STATE: TIMEOUT");



        //Line of text stating battery voltage
        display.println(("BATTERY VOLTAGE: " + std::to_string(batteryVoltage)).c_str());



        //Line of text showing 15s countdown to transition to 'ready' state
        uint64_t time_timer_started = millis();
        uint64_t time_remaining = (15000 - (millis() - time_timer_started))/1000;
        display.println(("TIMER: " + std::to_string(time_remaining) + "s").c_str());



        //Battery icon
        display.drawBitmap(113, 0, empty_batt.data(), 6, 14, WHITE);
        chargebars = (batteryVoltage/25.2)*10;
        display.fillRect(CHARGE_AREA_START_X, CHARGE_AREA_START_Y, chargebars, 4, WHITE);



        display.display();
    }
}
