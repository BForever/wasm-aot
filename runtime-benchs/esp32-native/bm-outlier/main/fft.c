#include "measure.h"
#include <stdio.h>
// #include <stdbool.h>


// From the Harbor paper
//
// "The outlier detector samples a set of sensor values and stores them in a buffer. Once the buffer is filled, it
// computes the distance between all pairs of samples in the buffer and stores the result in a matrix. Using a
// distance threshold, the algorithm marks the distance measurements in the matrix that are greater than the 
// threshold. If the majority of the distance measurements for a sensor readings are marked, then the sensor reading
// is classified as an outlier."

void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t NUMNUMBERS, int32_t buffer[], uint32_t distance_matrix[], uint32_t distance_threshold, unsigned char outliers[]) {
	rtc_startBenchmarkMeasurement_Native();

    // Calculate distance matrix
    uint16_t sub_start=0;
    for (uint16_t i=0; i<NUMNUMBERS; i++) {
        uint16_t hor = sub_start;
        uint16_t ver = sub_start;
        for (uint16_t j=i; j<NUMNUMBERS; j++) {
            int32_t buffer_i = buffer[i];
            int32_t buffer_j = buffer[j];
            if (buffer_i > buffer_j) {
                uint32_t diff = (uint32_t)(buffer_i - buffer_j);
                distance_matrix[hor] = diff;
                distance_matrix[ver] = diff;
            } else {
                uint32_t diff = (uint32_t)(buffer_j - buffer_i);
                distance_matrix[hor] = diff;
                distance_matrix[ver] = diff;
            }

            hor ++;
            ver += NUMNUMBERS;
        }
        sub_start+=NUMNUMBERS+1;
    }
    
    // Determine outliers
    uint16_t k=0; // Since we scan one line at a time, we don't need to calculate a matrix index.
                  // The first NUMNUMBERS distances correspond to measurement 1, the second NUMNUMBERS distances to measurement 2, etc.
    for (uint16_t i=0; i<NUMNUMBERS; i++) {
        uint16_t exceed_threshold_count = 0;
        for (uint16_t j=0; j<NUMNUMBERS; j++) {
            if (distance_matrix[k++] > distance_threshold) {
                exceed_threshold_count++;
            }
        }
        if (exceed_threshold_count > (NUMNUMBERS >> 1)) {
            outliers[i] = 1;
        } else {
            outliers[i] = 0;
        }
    }

	rtc_stopBenchmarkMeasurement();
}