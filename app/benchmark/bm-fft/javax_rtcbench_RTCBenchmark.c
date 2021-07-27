#include "benchmark.h"

#define RTCTEST_FFT_ARRAYSIZE 6

void javax_rtcbench_RTCBenchmark_void_test_native() {
	const uint16_t NUMNUMBERS = 1<<RTCTEST_FFT_ARRAYSIZE;
	
	int16_t *im = malloc(sizeof(int16_t)*NUMNUMBERS);
	int16_t *data = malloc(sizeof(int16_t)*NUMNUMBERS);
	// int16_t data[NUMNUMBERS];
	// int16_t im[NUMNUMBERS];

	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		data[i] = i*16;
		im[i] = 0;
	}

	printStr("BEFORE FFT");
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		printStr("-----");
		printInt16(data[i]);
		printInt16(im[i]);
	}

	rtcbenchmark_measure_native_performance(data, im, RTCTEST_FFT_ARRAYSIZE, 0);

	// printStr("AFTER FFT");
	// for (uint16_t i=0; i<NUMNUMBERS; i++) {
	// 	printStr("-----");
	// 	printInt16(data[i]);
	// 	printInt16(im[i]);
	// }
}

