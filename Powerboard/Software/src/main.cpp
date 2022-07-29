#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_task_wdt.h"

#define ARDUINO_LOOP_STACK_SIZE 8192

#include <Arduino.h>
#include <exception>
#include "stateMachine.h"
#include "States/groundstationGateway.h"

stateMachine statemachine;

void setup_task()
{
    statemachine.initialise(new GroundstationGateway(&statemachine));
}

void inner_loop_task()
{
    statemachine.update();
}

void loopTask(void *pvParameters)
{
    // esp_log_level_set("*", ESP_LOG_INFO); 
    setup_task();
    for(;;) {
        inner_loop_task();
        vTaskDelay(1);
 
    }
}

TaskHandle_t loopTaskHandle = NULL;

extern "C" void app_main()
{
    initArduino(); //probably dont even need this
    xTaskCreateUniversal(loopTask, "loopTask", ARDUINO_LOOP_STACK_SIZE, NULL, 1, &loopTaskHandle, 1);
}
