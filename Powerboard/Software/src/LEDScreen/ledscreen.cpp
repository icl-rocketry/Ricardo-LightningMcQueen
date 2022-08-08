#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <string>
#include "ledscreen.h"

#include "stateMachine.h"
#include "Battery/battery.h"
#include "3V3 Regulators/reg3v3.h"

#include "Commands/commandHandler.h"
#include "Commands/commandpacket.h"
#include "Storage/systemstatus.h"
#include "stateMachine.h"
#include "flags.h"



void LEDScreen::setupScreen(){
    // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
        Serial.println(F("SSD1306 allocation failed"));
        for(;;); // Don't proceed, loop forever
    }

    // Show initial display buffer contents on the screen --
    // the library initializes this with an Adafruit splash screen.
    display.display();

    //iclr logo
    const unsigned char iclr_logo [] PROGMEM = {
	0x00, 0x0f, 0xf0, 0x00, 0x00, 0x7b, 0xfe, 0x00, 0x01, 0xbf, 0xfb, 0x80, 0x03, 0xe6, 0x66, 0xc0, 
	0x07, 0x9c, 0x41, 0xa0, 0x0f, 0x34, 0x3c, 0xf0, 0x1f, 0x74, 0x33, 0x68, 0x3e, 0x68, 0x0f, 0xbc, 
	0x3a, 0xc4, 0x1c, 0x1c, 0x76, 0x8c, 0x38, 0x6a, 0x7d, 0x1c, 0x23, 0xee, 0x6a, 0x70, 0x0f, 0xf6, 
	0xe0, 0x0c, 0x3f, 0x07, 0xef, 0xe0, 0x20, 0x37, 0xe8, 0x7c, 0x39, 0xff, 0xff, 0x9c, 0x0e, 0x07, 
	0xa0, 0x04, 0x20, 0x07, 0xe0, 0x7c, 0x39, 0xff, 0xbf, 0x9c, 0x3e, 0x07, 0xec, 0x00, 0x07, 0xe7, 
	0x21, 0xfc, 0x2f, 0xf6, 0x77, 0xf4, 0x03, 0xea, 0x57, 0x81, 0x10, 0x0e, 0x3a, 0x10, 0x0d, 0xd4, 
	0x3c, 0x30, 0x0e, 0x3c, 0x1e, 0xe2, 0x47, 0x78, 0x0f, 0x46, 0x62, 0xf0, 0x07, 0x9f, 0xf9, 0xe0, 
	0x03, 0xe3, 0xc7, 0xc0, 0x01, 0xdf, 0xff, 0x80, 0x00, 0x7f, 0xde, 0x00, 0x00, 0x0f, 0xf0, 0x00
    };

    display.drawBitmap(48, 0, iclr_logo, 32, 32, WHITE);
    vTaskDelay(2000);

};




void LEDScreen::updateDefaultScreen(Battery::STATUS chargingStatus, float batteryVoltage, bool adpConn){

    display.clearDisplay();

    display.setTextSize(1);             // Normal 1:1 pixel scale
    display.setTextColor(SSD1306_WHITE);        // Draw white text

    display.setCursor(0,0);             // Start at top-left corner


    //current state system is in
    if(_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_IDLE)){ 
        display.println("STATE: IDLE");
        }

    else if(_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_ARMED)){
        display.println("STATE: ARMED");            
        }
    
    else if(_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_LIVE)){
        display.println("STATE: LIVE");            
        }

    else if(_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_BRICKED)){
        display.println("STATE: BRICKED");            
        }

    else{
        display.println("STATE: ERROR");            
    }



    //charger connected/not
    if(adpConn){       
        display.println("ADAPTER CONN: YES");
    }
    else{
        display.println("ADAPTER CONN: NO");
    }



    //charging status
    switch(chargingStatus) {    

        case Battery::STATUS::IN_PROGRESS:
        {
            display.println("CHARGING STATUS: IN PROGRESS");
            break;
        }

        case Battery::STATUS::CHARGE_COMPLETE:
        {
            display.println("CHARGING STATUS: COMPLETE");
            break;
        }

        case Battery::STATUS::CHARGE_SUSPEND:
        {
            display.println("CHARGING STATUS: SUSPENDED"); 
            break;  
        }

        default:
            display.println("CHARGING STATUS: ERROR");

    }



    //battery voltage
    display.println("BATTERY VOLTAGE: " + (String)batteryVoltage);



    display.display();
}


void LEDScreen::updateTimerScreen(float batteryVoltage, uint32_t timer15s){
    

    display.println("STATE: TIMEOUT");


    //battery voltage
    display.println("BATTERY VOLTAGE: " + (String)batteryVoltage);


    //timer
    float time_remaining = (15000 - (millis() - timer15s))/1000;
    display.println("TIMER: " + (String)time_remaining + "s");


    display.display();
}
