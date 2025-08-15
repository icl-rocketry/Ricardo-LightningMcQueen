#pragma once
#include <Arduino.h>

#include <driver/gpio.h>
#include <driver/adc.h>
#include "esp_adc_cal.h"
#include "railstruct.h"

class PowerRail{
    public:

        //power rail with voltage reading only
        PowerRail(const uint8_t voltage_pin, const float r1, const float r2):
            _voltage_pin(voltage_pin),
            _channel(ADC_CHANNEL_0),//default
            _unit(ADC_UNIT_1),
            _adcCal(),
            _adcInitialized(false),
            factor(((r1+r2)/r2)),
            _maxVoltage(0),
            _minVoltage(0)
        {}

        // power rail with switching on/off and voltage reading
        PowerRail(const uint8_t control_pin, const uint8_t voltage_pin, const bool high_is_rail_on, const bool on_at_startup, const float r1, const float r2):
            _control_pin(control_pin),
            _voltage_pin(voltage_pin),
            _high_is_rail_on(high_is_rail_on),
            _on_at_startup(on_at_startup),
            _channel(ADC_CHANNEL_0),//default
            _unit(ADC_UNIT_1),
            _adcCal(),
            _adcInitialized(false),
            factor(((r1+r2)/r2)),
            _maxVoltage(0),
            _minVoltage(0)
        {}


        void RailSetup(uint16_t maxVoltage, uint16_t minVoltage);
        void RailUpdate();        
        void RailOn();
        void RailOff();
        void RailRestart(uint32_t delay);

        RailStruct::rail_data getData();


    private:

        RailStruct::rail_data data;

        void RailMonitoringUpdate();

        const uint8_t _control_pin = 0;
        const uint8_t _voltage_pin;
        const bool _high_is_rail_on = 0;
        const bool _on_at_startup = 0;
        uint32_t _delay;
        bool restart;
        uint32_t time_restart_started;
        adc_channel_t _channel;
        adc_unit_t _unit;
        esp_adc_cal_characteristics_t _adcCal;
        bool _adcInitialized;
        static constexpr adc_atten_t _atten = ADC_ATTEN_DB_12;
        static constexpr adc_bits_width_t _width = ADC_WIDTH_MAX;
        const float factor;
        uint16_t _maxVoltage;
        uint16_t _minVoltage;
        uint16_t sampleDelta = 200; // sample the voltage rail at 5hz
        uint32_t prevSampleTime = 0;
        uint8_t ON_state;
        uint8_t OFF_state;
};