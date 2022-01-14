#include <stdio.h>
#include <stdlib.h>
#include "measure.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance_fillarray(int32_t NUMNUMBERS, int32_t numbers[]) {
	rtc_startBenchmarkMeasurement_Native();

	// for (uint16_t i=0; i<NUMNUMBERS; i++) {
	// 	printInt(numbers[i]);
	// }

	for (int32_t i=0; i<NUMNUMBERS; i++) {
		numbers[i] = 1;
	}

	// for (uint16_t i=0; i<NUMNUMBERS; i++) {
	// 	printInt(numbers[i]);
	// }

	rtc_stopBenchmarkMeasurement();
}

void rtcbench_fillarray() {
	int32_t NUMNUMBERS = 102400;
	int32_t *numbers = malloc(NUMNUMBERS*sizeof(int32_t));

	// Fill the array
	for (int32_t i=0; i<NUMNUMBERS; i++)
		numbers[i] = (NUMNUMBERS - 1 - i);

	rtcbenchmark_measure_native_performance_fillarray(NUMNUMBERS, numbers);
}