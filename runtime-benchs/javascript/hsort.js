

function siftDown( a,  start,  end)
{
    let root = start;
    let child;
    while ( (child = (root << 1)+1) < end ) {
        let child_plus_one = child + 1;
        if ((child_plus_one < end) && (a[child] < a[child_plus_one])) {
            child += 1;
        }
        let a_root = a[root];
        let a_child = a[child];
        // printInt(a_root);
        // printInt(a_child);
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

function rtcbenchmark_measure_native_performance_hsort( count,  a) {
    console.time("rtc")


    // Then sort it
    let start, end;

    // for(int i=0;i<count;i++){
    //     printInt(a[i]);
    // }
    // rtc_startBenchmarkMeasurement_Native();

    /* heapify */
    for (start = (count-2)/2; start >=0; start--) {
        siftDown( a, start, count);
    }
    // rtc_startBenchmarkMeasurement_Native();

    // for(int i=0;i<count;i++){
    //     printInt(a[i]);
    // }
    // rtc_startBenchmarkMeasurement_Native();
    for (end=count-1; end > 0; end--) {
        let tmp = a[end]
        a[end] = a[0]
        a[0]=tmp
        siftDown(a, 0, end);
    }
    // rtc_startBenchmarkMeasurement_Native();
    // for(int i=0;i<count;i++){
    //     printInt(a[i]);
    // }

    console.timeEnd("rtc")
}

function rtcbench_hsort() {
    let NUMNUMBERS = 1000000;
    let numbers = [];

    // Fill the array
    for (let i=0; i<NUMNUMBERS; i++){
        numbers[i] = (NUMNUMBERS - 1 - i);
    }

    rtcbenchmark_measure_native_performance_hsort(NUMNUMBERS, numbers);
}

rtcbench_hsort()