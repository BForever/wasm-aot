
function rtcbenchmark_measure_native_performance_bsort( NUMNUMBERS,  numbers) {
    console.time("rtc")

    // Then sort it
    for (let i=0; i<NUMNUMBERS; i++) {
        let x=(NUMNUMBERS-i-1); // This doesn't get optimised the way I expected it would. Without this extra variable, it will calculate NUMNUMBERS-i-1 on each interation of the inner loop! (speedup 14.7M -> 14.2M cycles)
        let j_plus_one = 1; // Same goes for "j+1"
        let val_at_j_plus_one = numbers[0];
        // printInt16(i);
        // uint16_t x=NUMNUMBERS-i-1; // Somehow this makes it a little slower at -Os. I expected no difference.
        for (let j=0; j<x; j++) {

            let val_at_j = numbers[j];
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

    console.timeEnd("rtc")
}
function rtcbench_bsort() {
    let NUMNUMBERS = 5120;
    let numbers = [];

    // Fill the array
    for (let i=0; i<NUMNUMBERS; i++){
        numbers[i] = (NUMNUMBERS - 1 - i);
    }


    rtcbenchmark_measure_native_performance_bsort(NUMNUMBERS, numbers);
}

rtcbench_bsort()