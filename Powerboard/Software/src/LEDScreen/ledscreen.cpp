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

        Serial.println("LED initialisation successful");

        display.clearDisplay();

        //Display iclr logo on startup until updateScreen function is called
        display.drawBitmap(48, 0, iclr_logo.data(), 32, 32, WHITE);
        display.display();
    }

}



void LEDScreen::updateDefaultScreen(Battery::STATUS chargingStatus, float batteryVoltage, bool adpConn){
    Serial.println("Entered update function");
    //If error in screen setup or 2s have not passed, returns to calling function
    if(_systemstatus.flag_triggered(SYSTEM_FLAG::ERROR_DISPLAY)){
        return;
        }

    else{

        display.clearDisplay();
        display.setTextSize(1);             // Normal 1:1 pixel scale
        display.setTextColor(SSD1306_WHITE);        // Draw white text
        display.setCursor(0,0);             // Start at top-left corner


        //Line of text stating current system state
        if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_SETUP)){ 
            display.println("STATE: SETUP");
            }

        else if(_systemstatus.flag_triggered(SYSTEM_FLAG::STATE_IDLE)){
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
        display.drawRect(113, 0, 15, 6, WHITE);
        display.drawRect(128, 3, 1, 2, WHITE);
        chargebars = (batteryVoltage/25.2)*11;  //number of bars of charge out of 11
        display.fillRect(CHARGE_AREA_START_X, CHARGE_AREA_START_Y, chargebars, 4, WHITE);
        //filling in battery icon with rectangular bars


        display.display();

        Serial.println("Default screen updated successfully");
    }
}



void LEDScreen::updateTimerScreen(float batteryVoltage, uint32_t time_timer_started){

    //If error in screen setup or 2s have not passed, returns to calling function
    if(_systemstatus.flag_triggered(SYSTEM_FLAG::ERROR_DISPLAY)){
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
        uint32_t time_remaining = (15000 - (millis() - time_timer_started))/1000;
        Serial.println(("15000 - (" + std::to_string(millis()) + " - " + std::to_string(time_timer_started) + ")").c_str());
        display.println(("TIMER: " + std::to_string(time_remaining) + "s").c_str());



        //Battery icon in top right corner
        display.drawRect(113, 0, 14, 6, WHITE);
        display.drawRect(128, 3, 1, 2, WHITE);
        chargebars = (batteryVoltage/25.2)*10;  //number of bars of charge out of 10
        display.fillRect(CHARGE_AREA_START_X, CHARGE_AREA_START_Y, chargebars, 4, WHITE);
        //filling in battery icon with rectangular bars



        display.display();
        Serial.println("Timer screen updated successfully");

    }
}
