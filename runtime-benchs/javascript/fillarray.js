

function rtcbenchmark_measure_native_performance_fillarray( NUMNUMBERS,  numbers) {
    console.time("rtc")

    // for (uint16_t i=0; i<NUMNUMBERS; i++) {
    // 	printInt(numbers[i]);
    // }

    for (let i=0; i<NUMNUMBERS; i++) {
        numbers[i] = 1;
    }

    // for (uint16_t i=0; i<NUMNUMBERS; i++) {
    // 	printInt(numbers[i]);
    // }

    console.timeEnd("rtc")
}

function rtcbench_fillarray() {
    let NUMNUMBERS = 102400;
    let numbers = [];

    // Fill the array
    for (let i=0; i<NUMNUMBERS; i++){
        numbers[i] = (NUMNUMBERS - 1 - i);
    }

    rtcbenchmark_measure_native_performance_fillarray(NUMNUMBERS, numbers);
}
rtcbench_fillarray()