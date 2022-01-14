#include <stdio.h>
#include <stdlib.h>
#include "measure.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance_fillarray(uint16_t NUMNUMBERS, int32_t numbers[]) {
	rtc_startBenchmarkMeasurement_Native();

	// for (uint16_t i=0; i<NUMNUMBERS; i++) {
	// 	printInt(numbers[i]);
	// }

	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		numbers[i] = 1;
	}

	// for (uint16_t i=0; i<NUMNUMBERS; i++) {
	// 	printInt(numbers[i]);
	// }

	rtc_stopBenchmarkMeasurement();
}
void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t NUMNUMBERS, int32_t numbers[]);

void rtcbench_fillarray() {
	uint16_t NUMNUMBERS = 1024;
	int32_t *numbers = malloc(NUMNUMBERS*sizeof(int32_t));

	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++)
		numbers[i] = (NUMNUMBERS - 1 - i);

	rtcbenchmark_measure_native_performance_fillarray(NUMNUMBERS, numbers);
}