let start;
function rtc_start(){
    // start = new Date().valueOf();

}

function rtc_stop(){
    // let stop = new Date().valueOf();
    // console.log("stopped, delta: ",stop - start)

}
function rtcbenchmark_measure_native_performance_binsrch(NUMNUMBERS, numbers) {
    console.time("rtc")

    let toFind = numbers[NUMNUMBERS-1];

    let mid=0;
    for (let i=0; i<1000; i++) {
        let low = 0;
        let high = NUMNUMBERS - 1;
        while (low <= high) {
            mid = (low + high) >> 1;
            // printInt(mid);
            let number_mid;
            if ((number_mid=numbers[mid]) < toFind) {
                low = mid + 1;
            } else if (numbers[mid] > toFind) {
                high = mid - 1;
            } else {
                break; // Found. Would return from here in a normal search, but for this benchmark we just want to try many numbers.
            }
        }
    }

    console.timeEnd("rtc")
    numbers[0]=mid; // This is just here to prevent the compiler from optimising away the whole method
}
function rtcbench_binsrch() {
    let NUMNUMBERS = 100;

    var numbers = [];

    for (let loop = 0; loop < NUMNUMBERS; loop++) {
        numbers[loop] = (loop - 30);
    }
    rtcbenchmark_measure_native_performance_binsrch(NUMNUMBERS, numbers);
}
rtcbench_binsrch()