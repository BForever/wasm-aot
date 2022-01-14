#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_timer.h"
typedef struct
{
    char* name;
    void (*func)();
}bench;

void rtcbench_binsrch();
void rtcbench_bsort();
void rtcbench_fillarray();
void rtcbench_hsort();
void rtcbench_pi();

static bench bench_list[]={
    {"binsrch",rtcbench_binsrch},
    {"bsort",rtcbench_bsort},
    {"fillarray",rtcbench_fillarray},
    {"hsort",rtcbench_hsort},
    {"pi",rtcbench_pi},
};

void app_main(void)
{
    int64_t time_since_boot = esp_timer_get_time();
    printf("delay test start: %lld\n",time_since_boot);

    vTaskDelay(pdMS_TO_TICKS(100));

    int64_t time_now = esp_timer_get_time();
    printf("stop: %lld\n",time_now);
    printf("delta: %f\n\n",(time_now-time_since_boot)/1000.0f);

    for(int i=0;i<sizeof(bench_list)/sizeof(bench);i++){
        printf("benchmark %s:\n",bench_list[i].name);
        bench_list[i].func();
    }
}