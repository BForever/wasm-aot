import time
global start_time
def rtc_startBenchmarkMeasurement_Native():
    global start_time
    start_time = time.ticks_ms()

def rtc_stopBenchmarkMeasurement():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)

def rtcbenchmark_measure_native_performance_bsort(NUMNUMBERS, numbers):
    rtc_startBenchmarkMeasurement_Native()
    for i in range(0, NUMNUMBERS):
        x=(NUMNUMBERS-i-1)-i-1
        j_plus_one = 1
        val_at_j_plus_one = numbers[0]
        # printInt16(i);
        # uint16_t x=NUMNUMBERS-i-1; // Somehow this makes it a little slower at -Os.I expected no difference.
        for j in range(0, x):
            val_at_j = numbers[j]
            val_at_j_plus_one = numbers[j_plus_one]
            if val_at_j > val_at_j_plus_one:
                numbers[j] = val_at_j_plus_one
                numbers[j+1] = val_at_j
                val_at_j_plus_one = val_at_j
            j_plus_one = j_plus_one+1

    # for (uint16_t i=0; i < NUMNUMBERS; i++)
    # printInt(numbers[i]);
    rtc_stopBenchmarkMeasurement()

def rtcbench_bsort():
    NUMNUMBERS = 512
    numbers = []

    for i in range(0,NUMNUMBERS):
        numbers.append(NUMNUMBERS - 1 - i)

    rtcbenchmark_measure_native_performance_bsort(NUMNUMBERS, numbers)

rtcbench_bsort()
