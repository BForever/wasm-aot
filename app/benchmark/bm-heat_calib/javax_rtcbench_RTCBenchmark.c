
#include "heat_calib.h"
#include "benchmark.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance() {
    rtc_startBenchmarkMeasurement_Native();

    heat_calib();

    rtc_stopBenchmarkMeasurement();
}

void javax_rtcbench_RTCBenchmark_void_test_native() {
    ACal = malloc(64*sizeof(uint16_t));
    QCal = malloc(64*sizeof(uint32_t));
    stdCal = malloc(64*sizeof(uint16_t));
    zscore = malloc(64*sizeof(uint16_t));

    for (uint16_t i=0; i<64; i++) {
        ACal[i] = QCal[i] = stdCal[i] = 0;
    }

    rtcbenchmark_measure_native_performance();

    printStr("stdCal:");
    for(int i=0; i<64; i++) {
        printInt(stdCal[i]);
    }
    printStr("zscore:");
    for(int i=0; i<64; i++) {
        printInt(zscore[i]);
    }
    printStr("z_min:");
    printInt(z_min);
    printStr("z_max:");
    printInt(z_max);
}
