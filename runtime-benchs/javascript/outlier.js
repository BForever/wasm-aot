

function rtcbenchmark_measure_native_performance_outlier( NUMNUMBERS,  buffer,  distance_matrix,  distance_threshold, outliers) {
    console.time("rtc");

    // Calculate distance matrix
    let sub_start=0;
    for (let i=0; i<NUMNUMBERS; i++) {
        let hor = sub_start;
        let ver = sub_start;
        for (let j=i; j<NUMNUMBERS; j++) {
            let buffer_i = buffer[i];
            let buffer_j = buffer[j];
            if (buffer_i > buffer_j) {
                let diff = (buffer_i - buffer_j);
                distance_matrix[hor] = diff;
                distance_matrix[ver] = diff;
            } else {
                let diff = (buffer_j - buffer_i);
                distance_matrix[hor] = diff;
                distance_matrix[ver] = diff;
            }

            hor ++;
            ver += NUMNUMBERS;
        }
        sub_start+=NUMNUMBERS+1;
    }

    // Determine outliers
    let k=0; // Since we scan one line at a time, we don't need to calculate a matrix index.
                  // The first NUMNUMBERS distances correspond to measurement 1, the second NUMNUMBERS distances to measurement 2, etc.
    for (let i=0; i<NUMNUMBERS; i++) {
        let exceed_threshold_count = 0;
        for (let j=0; j<NUMNUMBERS; j++) {
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

    console.timeEnd("rtc")
}

function rtcbench_outlier() {
    let NUMNUMBERS = 100;
    let buffer = [];
    let distrance_matrix = [];
    let outliers = [];

    // Fill the array
    for (let i=0; i<NUMNUMBERS; i++)
        buffer[i] = i;
    // Add some outliers
    buffer[2]   = 1000;
    buffer[11]  = -1000;

    rtcbenchmark_measure_native_performance_outlier(NUMNUMBERS, buffer, distrance_matrix, 500, outliers);

    // for (let i=0; i<NUMNUMBERS; i++) {
    //     console.log(outliers[i]);
    //     if (outliers[i] === 1) {
    //         console.log(i);
    //     }
    // }
}

rtcbench_outlier();
