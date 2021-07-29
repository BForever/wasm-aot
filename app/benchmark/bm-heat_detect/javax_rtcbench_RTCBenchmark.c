#include "benchmark.h"
#include "heat_sensor_data.h"
#include "heat_calib.h"
#include "heat_detect.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t *frame_buffer, uint8_t *color, uint8_t *rColor, int32_t *largestSubset, int32_t *testset, int32_t *result) {
    rtc_startBenchmarkMeasurement_Native();

    for (uint16_t i=0; i<25; i++) {
        get_heat_sensor_data(frame_buffer, 101+i); // detection frames start after 100 calibration frames and 1 check frame.
        heat_detect(frame_buffer, color, rColor, largestSubset, testset, result);
    }

    rtc_stopBenchmarkMeasurement();
}

void javax_rtcbench_RTCBenchmark_void_test_native() {
    ACal = malloc(64*sizeof(uint16_t));
    QCal = malloc(64*sizeof(uint32_t));
    stdCal = malloc(64*sizeof(uint16_t));
    zscore = malloc(64*sizeof(uint16_t));
    zscoreWeight = malloc(64*sizeof(bool));

    for (uint16_t i=0; i<64; i++) {
        ACal[i] = QCal[i] = stdCal[i] = 0;
    }
    heat_calib();

    uint16_t *frame_buffer = malloc(64*sizeof(uint16_t));
    uint8_t *color         = malloc(64*sizeof(uint8_t));
    uint8_t *rColor        = malloc(64*sizeof(uint8_t));
    int32_t *largestSubset = malloc(64*sizeof(int32_t));
    int32_t *testset       = malloc(64*sizeof(int32_t));
    int32_t *result       = malloc(64*sizeof(int32_t));

    rtcbenchmark_measure_native_performance(frame_buffer, color, rColor, largestSubset, testset, result);

    printStr("weight_coordinate:");
    printInt(x_weight_coordinate);
    printInt(y_weight_coordinate);
    printInt(xh_weight_coordinate);
    printInt(yh_weight_coordinate);
    printStr("color:");
    printInt(yellowGroupH);
    printInt(yellowGroupL);
    printInt(orangeGroupH);
    printInt(orangeGroupL);
    printInt(redGroupH);
    printInt(redGroupL);

}
