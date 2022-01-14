#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_timer.h"

void javax_rtcbench_RTCBenchmark_void_test_native();

void app_main(void)
{
    int64_t time_since_boot = esp_timer_get_time();
    printf("delay test start: %lld\n",time_since_boot);

    vTaskDelay(pdMS_TO_TICKS(100));

    int64_t time_now = esp_timer_get_time();
    printf("stop: %lld\n",time_now);
    printf("delta: %f\n\n",(time_now-time_since_boot)/1000.0f);

    javax_rtcbench_RTCBenchmark_void_test_native();
    
}