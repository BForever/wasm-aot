#include <stdio.h>
#include "measure.h"


void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t NUMNUMBERS, int32_t buffer[], uint32_t distance_matrix[], uint32_t distance_threshold, unsigned char  outliers[]);

void javax_rtcbench_RTCBenchmark_void_test_native() {
	uint16_t NUMNUMBERS = 20;
	int32_t *buffer = malloc(NUMNUMBERS*sizeof(int32_t));
	uint32_t *distrance_matrix = malloc(NUMNUMBERS*NUMNUMBERS*sizeof(uint32_t));
	unsigned char  *outliers = malloc(NUMNUMBERS*sizeof(unsigned char ));

	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++)
        buffer[i] = i;
	// Add some outliers
	buffer[2]   = 1000;
	buffer[11]  = -1000;

	rtcbenchmark_measure_native_performance(NUMNUMBERS, buffer, distrance_matrix, 500, outliers);

	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		printf("%d",outliers[i]);
		if (outliers[i] == 1) {
			printf("%d",i);
		}
	}
}
