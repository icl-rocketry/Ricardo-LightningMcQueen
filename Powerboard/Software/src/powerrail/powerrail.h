#pragma once
#include <Arduino.h>

#include <driver/gpio.h>
#include <driver/adc.h>
#include "esp_adc_cal.h"
#include "railstruct.h"

class PowerRail{
    public:

        PowerRail(const uint8_t control_pin, const uint8_t voltage_pin, bool high_is_rail_on, bool on_at_startup, const float r1, const float r2);

        void RailSetup(uint16_t maxVoltage, uint16_t minVoltage);
        void RailUpdate();        
        void RailOn();
        void RailOff();
        void RailRestart(uint32_t delay);

        RailStruct::rail_data getData();


    private:

        RailStruct::rail_data data;

        void RailMonitoringUpdate();

        const uint8_t _control_pin;
        const uint8_t _voltage_pin;
        bool _high_is_rail_on;
        bool _on_at_startup;
        uint32_t _delay;
        bool restart;
        uint32_t time_restart_started;
        adc_channel_t _channel;
        adc_unit_t _unit;
        esp_adc_cal_characteristics_t _adcCal;
        bool _adcInitialized;
        static constexpr adc_atten_t _atten = ADC_ATTEN_DB_11;
        static constexpr adc_bits_width_t _width = ADC_WIDTH_12Bit;
        const float factor;
        uint16_t _maxVoltage;
        uint16_t _minVoltage;
        uint16_t sampleDelta = 20; // sample the voltage rail at 5hz
        uint32_t prevSampleTime = 0;
        uint8_t ON_state;
        uint8_t OFF_state;
};