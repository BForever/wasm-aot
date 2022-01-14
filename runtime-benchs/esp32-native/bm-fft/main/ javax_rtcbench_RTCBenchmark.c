#include <stdio.h>
#define RTCTEST_FFT_ARRAYSIZE 6
int16_t rtcbenchmark_measure_native_performance(int16_t *fr, int16_t *fi, int16_t m, int16_t inverse);
void javax_rtcbench_RTCBenchmark_void_test_native() {
	const uint16_t NUMNUMBERS = 1<<RTCTEST_FFT_ARRAYSIZE;
	
	int16_t *data = malloc(sizeof(int16_t)*NUMNUMBERS);
	int16_t *im = malloc(sizeof(int16_t)*NUMNUMBERS);
	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		data[i] = i*16;
		im[i] = 0;
	}

	printf("BEFORE FFT\n");
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		printf("-----\n");
		printf("%d\n",data[i]);
        printf("%d\n",im[i]);
	}

	rtcbenchmark_measure_native_performance(data, im, RTCTEST_FFT_ARRAYSIZE, 0);

	printf("AFTER FFT\n");
	for (uint16_t i=0; i<NUMNUMBERS; i++) {
		printf("-----\n");
		printf("%d\n",data[i]);
        printf("%d\n",im[i]);
	}
}
