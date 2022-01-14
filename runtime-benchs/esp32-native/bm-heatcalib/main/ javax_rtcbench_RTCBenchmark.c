
#include "heat_calib.h"
#include "measure.h"

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
        // printInt(ACal[i]);
        // printInt(QCal[i]);
        // printInt(stdCal[i]);
    }

    rtcbenchmark_measure_native_performance();

    printf("stdCal:\n");
    for(int i=0; i<64; i++) {
        printf("%d\n",stdCal[i]);
    }
    printf("zscore:\n");
    for(int i=0; i<64; i++) {
        printf("%d\n",zscore[i]);
    }
    printf("z_min:\n");
    printf("%d\n",z_min);
    printf("z_max:\n");
    printf("%d\n",z_max);
}
