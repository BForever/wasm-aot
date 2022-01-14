import time
global start_time
def rtc_startBenchmarkMeasurement_Native():
    global start_time
    start_time = time.ticks_ms()

def rtc_stopBenchmarkMeasurement():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)


def rtcbenchmark_measure_native_performance_fillarray(NUMNUMBERS, numbers):
    rtc_startBenchmarkMeasurement_Native()
	# for (uint16_t i=0; i<NUMNUMBERS; i++) {
	# 	printInt(numbers[i]);
    for i in range(0,NUMNUMBERS):
        numbers[i] = 1
	# for (uint16_t i=0; i<NUMNUMBERS; i++) {
	# 	printInt(numbers[i]);
    rtc_stopBenchmarkMeasurement()


def rtcbench_fillarray():
	NUMNUMBERS = 1024
	numbers = []

	for i in range(0,NUMNUMBERS):
		numbers.append(NUMNUMBERS - 1 - i)

	rtcbenchmark_measure_native_performance_fillarray(NUMNUMBERS, numbers)

rtcbench_fillarray()
