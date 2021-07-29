#include"benchmark.h"
#include "motetrack.h"
#include "Point.h"

#include "motetrack.h"
uint16_t GlobUniqSignatureID;
Point __attribute__((noinline)) rtcbenchmark_measure_native_performance() {
    rtc_startBenchmarkMeasurement_Native();

    Point p = estLocAndSend();

    rtc_stopBenchmarkMeasurement();

    return p;
}

void javax_rtcbench_RTCBenchmark_void_test_native() {
    motetrack_init_benchmark();
	Point p = rtcbenchmark_measure_native_performance();
    printStr("Result:");
    printInt16(p.x);
    printInt16(p.y);
    printInt16(p.z);	
}
