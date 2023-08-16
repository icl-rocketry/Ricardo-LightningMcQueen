#include "powerrail.h"
#include "config/pinmap_config.h"
#include <libriccore/riccorelogging.h>
#include <Arduino.h>

#include <string>

#include <driver/gpio.h>
#include <driver/adc.h>
#include <esp_adc_cal.h>
#include <esp32-hal-adc.h>


PowerRail::PowerRail(const uint8_t control_pin, const uint8_t voltage_pin, bool on_at_startup, const float r1, const float r2):
_control_pin(control_pin),
_voltage_pin(voltage_pin),
_on_at_startup(on_at_startup),
_channel(ADC_CHANNEL_0),//default
_unit(ADC_UNIT_1),
_adcCal(),
_adcInitialized(false),
factor(((r1+r2)/r2)),
_maxVoltage(0),
_minVoltage(0)
{}

void PowerRail::RailSetup(uint16_t maxVoltage, uint16_t minVoltage){

    // control pin setup

    pinMode(_control_pin,OUTPUT);

    if (_on_at_startup == true){
        digitalWrite(_control_pin, LOW);    
    }
    if (_on_at_startup == false){
        digitalWrite(_control_pin, HIGH);
    }


    _maxVoltage = maxVoltage;
    _minVoltage = minVoltage;

    int error = 0;
    //get channel and adc unit
    int8_t channel = digitalPinToAnalogChannel(_voltage_pin);
    if (channel > (SOC_ADC_MAX_CHANNEL_NUM - 1))
    {
        _channel = static_cast<adc_channel_t>(channel-SOC_ADC_MAX_CHANNEL_NUM);
        _unit = ADC_UNIT_2;
        
        error += adc2_config_channel_atten(static_cast<adc2_channel_t>(_channel),_atten);
    }

    

    else
    {
        _channel = static_cast<adc_channel_t>(channel);
        _unit = ADC_UNIT_1;
        error += adc1_config_width(_width);
        error += adc1_config_channel_atten(static_cast<adc1_channel_t>(_channel),_atten);
    }

    if (error)
    {
        RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Vrail Monitor Failed to initialize!");
        return;
    }

    //characerise ADC
    esp_adc_cal_characterize(_unit,_atten,_width,1100,&_adcCal);

    _adcInitialized = true;

}

void PowerRail::RailOn(){
    digitalWrite(_control_pin, LOW);

}

void PowerRail::RailOff(){
    digitalWrite(_control_pin, HIGH);
}


void PowerRail::RailRestart(uint32_t delay){
    _delay = delay;
    restart = true;
    time_restart_started = millis();
}

void PowerRail::RailUpdate(){

    // restarting stuff
    if (restart){
        RailOff();
        // if (millis() - time_restart_started > 100){
        //     RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Power Rail OFF");
        // }
        if (millis() - time_restart_started > _delay){
            RailOn();
            restart = false;
        }
    }

    RailMonitoringUpdate();
}


void PowerRail::RailMonitoringUpdate(){

    // rail monitoring stuff
    if(!_adcInitialized)
    {
        return;
    }

    if (millis() - prevSampleTime >= sampleDelta)
    {   
        int raw_reading;
        if (_unit == ADC_UNIT_1)
        {
            raw_reading = adc1_get_raw(static_cast<adc1_channel_t>(_channel));
        }
        else
        {
            
             adc2_get_raw(static_cast<adc2_channel_t>(_channel),_width,&raw_reading);
        }

        uint32_t reading = esp_adc_cal_raw_to_voltage(raw_reading,&_adcCal);

        data.volt = (uint16_t)(factor * (float)reading); // voltage in mV
        
        if (!_maxVoltage)
        {
            //cannot calculate if we dont have max voltage
            data.percent = 0;
        }
        else
        {
            data.percent = uint16_t(((float)(data.volt - _minVoltage) / (float)(_maxVoltage - _minVoltage)) * 100.0);
        }
    }

}

RailStruct::rail_data PowerRail::getData()
{
    return data;
}


