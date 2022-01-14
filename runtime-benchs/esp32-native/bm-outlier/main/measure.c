#include <stdio.h>
#include "esp_timer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
static int64_t start_time;
void rtc_startBenchmarkMeasurement_Native(){
    start_time = esp_timer_get_time();
}
void rtc_stopBenchmarkMeasurement(){
    int64_t stop_time = esp_timer_get_time();
    printf("start: %lld\n",start_time);
    printf("stop: %lld\n",stop_time);
    printf("delta: %f\n\n",(stop_time-start_time)/1000.0f);
}