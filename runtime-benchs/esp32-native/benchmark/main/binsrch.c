#include <stdio.h>
#include <stdlib.h>
#include "measure.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance_binsrch(uint16_t NUMNUMBERS, int32_t numbers[]) {
    rtc_startBenchmarkMeasurement_Native();

    int32_t toFind = numbers[NUMNUMBERS-1];

    uint16_t mid=0;
    for (uint16_t i=0; i<1000; i++) {
        uint16_t low = 0;
        uint16_t high = NUMNUMBERS - 1;
        while (low <= high) {
            mid = ((uint16_t)(low + high)) >> 1;
            // printInt(mid);
            int32_t number_mid;
            if ((number_mid=numbers[mid]) < toFind) {
                low = mid + 1;
            } else if (numbers[mid] > toFind) {
                high = mid - 1;
            } else {
                break; // Found. Would return from here in a normal search, but for this benchmark we just want to try many numbers.
            }
        }
    }

    rtc_stopBenchmarkMeasurement();
    numbers[0]=mid; // This is just here to prevent the compiler from optimising away the whole method
}
void rtcbench_binsrch() {
    uint16_t NUMNUMBERS = 100;
    
    int32_t *numbers = malloc(NUMNUMBERS*sizeof(int32_t));

    for (uint8_t loop = 0; loop < NUMNUMBERS; loop++) {
        numbers[loop] = (loop - 30);
    }
    rtcbenchmark_measure_native_performance_binsrch(NUMNUMBERS, numbers);
}


