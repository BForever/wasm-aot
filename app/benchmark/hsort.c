#include"benchmark.h"

void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t count, int32_t a[]);


// Split into separate function to avoid the compiler just optimising away the whole test.

#define SWAP(r,s)  do{int32_t t=r; r=s; s=t; } while(0)

void __attribute__((noinline)) siftDown( int32_t *a, int start, int end)
{
    int root = start;
    int child;
    while ( (child = (root << 1)+1) < end ) {
        int child_plus_one = child + 1;
        if ((child_plus_one < end) && (a[child] < a[child_plus_one])) {
            child += 1;
        }
        int32_t a_root = a[root];
        int32_t a_child = a[child];
        printInt(a_root);
        printInt(a_child);
        if (a[root] < a[child]) {
            // SWAP( a[child], a[root] );
            a[root] = a_child;
            a[child] = a_root;

            root = child;
        }
        else {
            break;
        }
    }
}

void __attribute__((noinline)) rtcbenchmark_measure_native_performance(uint16_t count, int32_t a[]) {
	// rtc_startBenchmarkMeasurement_Native();
    

	// Then sort it
    int start, end;

    // for(int i=0;i<count;i++){
    //     printInt(a[i]);
    // }
    // rtc_startBenchmarkMeasurement_Native();

    // /* heapify */
    // for (start = (count-2)/2; start >=0; start--) {
    //     siftDown( a, start, count);
    // }
    // rtc_startBenchmarkMeasurement_Native();
    
    // for(int i=0;i<count;i++){
    //     printInt(a[i]);
    // }
    rtc_startBenchmarkMeasurement_Native();
    for (end=count-1; end > 0; end--) {
        SWAP(a[end],a[0]);
        siftDown(a, 0, end);
    }
    rtc_startBenchmarkMeasurement_Native();
    for(int i=0;i<count;i++){
        printInt(a[i]);
    }

	rtc_stopBenchmarkMeasurement();
}

void javax_rtcbench_RTCBenchmark_void_test_native() {
	uint16_t NUMNUMBERS = 100;
    int32_t *numbers = malloc(NUMNUMBERS*sizeof(int32_t));

	// Fill the array
	for (uint16_t i=0; i<NUMNUMBERS; i++){
        numbers[i] = (NUMNUMBERS - 1 - i);
    }
		

	rtcbenchmark_measure_native_performance(NUMNUMBERS, numbers);
}