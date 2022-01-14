import time
global start_time
def rtc_startBenchmarkMeasurement_Native():
    global start_time
    start_time = time.ticks_ms()

def rtc_stopBenchmarkMeasurement():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)

def rtcbenchmark_measure_native_performance(NUMNUMBERS, numbers):
    rtc_startBenchmarkMeasurement_Native()
    toFind = numbers[NUMNUMBERS - 1]
    mid = 0
    for i in range(0, 10000):
        low = 0
        high = NUMNUMBERS - 1
        while low <= high:
            mid = (low + high) >> 1
            # print(mid)
            number_mid = numbers[mid]
            if number_mid < toFind:
                low = mid + 1
            else:
                if numbers[mid] > toFind:
                    high = mid - 1
                else:
                    # print("found in index", mid)
                    break
                    # Found. Would return from here in a normal search,
                    # but for this benchmark we just want to try many numbers.
    rtc_stopBenchmarkMeasurement()
    numbers[0] = mid
    # This is just here to prevent the
    # compiler from optimising away the whole method

def benchmark():
    NUMNUMBERS = 100
    numbers = []

    for loop in range(0, NUMNUMBERS):
        numbers.append(loop - 30)

    rtcbenchmark_measure_native_performance(NUMNUMBERS, numbers)

benchmark()
