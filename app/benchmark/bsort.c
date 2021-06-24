#include"benchmark.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t NUMNUMBERS, int32_t numbers[]) {
	rtc_startBenchmarkMeasurement_Native();

	// Then sort it
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		uint16_t x=(NUMNUMBERS-i-1); // This doesn't get optimised the way I expected it would. Without this extra variable, it will calculate NUMNUMBERS-i-1 on each interation of the inner loop! (speedup 14.7M -> 14.2M cycles)
		uint16_t j_plus_one = 1; // Same goes for "j+1"
		int32_t val_at_j_plus_one = numbers[0];
		// uint16_t x=NUMNUMBERS-i-1; // Somehow this makes it a little slower at -Os. I expected no difference.
		for (uint16_t j=0; j<x; j++) {
			int32_t val_at_j = numbers[j];
			val_at_j_plus_one = numbers[j_plus_one];
			if (val_at_j>val_at_j_plus_one) {
				numbers[j] = val_at_j_plus_one;
				numbers[j+1] = val_at_j;
				val_at_j_plus_one = val_at_j;
			}
			j_plus_one++;
		}
	}

	// for (uint16_t i=0; i<NUMNUMBERS; i++)
	// 	printInt(numbers[i]);

	rtc_stopBenchmarkMeasurement();
}
void javax_rtcbench_RTCBenchmark_void_test_native() {
	uint16_t NUMNUMBERS = 256;
	int32_t *numbers = malloc(NUMNUMBERS*sizeof(int32_t));

	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++)
		numbers[i] = (NUMNUMBERS - 1 - i);

	// for (uint16_t i=0; i<NUMNUMBERS; i++)
	// 	printInt(numbers[i]);

	rtcbenchmark_measure_native_performance(NUMNUMBERS, numbers);
}