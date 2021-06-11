// void __attribute__((noinline)) rtcbenchmark_measure_native_performance() {
// 	rtc_startBenchmarkMeasurement_Native();


// 	rtc_stopBenchmarkMeasurement();
// }

// void javax_rtcbench_RTCBenchmark_void_test_native() {
// 	rtcbenchmark_measure_native_performance();
// }
#include "benchmark.h"
void __attribute__((noinline)) rtcbenchmark_measure_native_performance() {
	rtc_startBenchmarkMeasurement_Native();
	uint32_t* ptr = malloc(10);

	*ptr = 1;
	*(ptr+1)=2;
	printInt(*((uint32_t*)0));
	printInt(*((uint32_t*)4));


	rtc_stopBenchmarkMeasurement();
}

void javax_rtcbench_RTCBenchmark_void_test_native() {
	rtcbenchmark_measure_native_performance();
}
