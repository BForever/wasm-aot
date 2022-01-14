import time
global start_time
def rtc_startBenchmarkMeasurement_Native():
    global start_time
    start_time = time.ticks_ms()

def rtc_stopBenchmarkMeasurement():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)


def siftDown(a, start, end):
    root = start
    child = (int(root) << 1) + 1
    while child < end:
        child_plus_one = child + 1
        if (child_plus_one < end) and (a[child] < a[child_plus_one]):
            child += 1
        a_root = a[root]
        a_child = a[child]
        # printInt(a_root);
        # printInt(a_child);
        if a[root] < a[child]:
            # SWAP( a[child], a[root] );
            a[root] = a_child
            a[child] = a_root
            root = child
        else:
            break

        child = (root << 1) + 1



def rtcbenchmark_measure_native_performance_hsort(count,a):
    rtc_startBenchmarkMeasurement_Native()

    # heapify
    start = (count - 2) >> 1
    while start >= 0:
        siftDown(a, start, count)
        start = start-1

    end=count-1
    while end>0:
        temp = a[end]
        a[end] = a[0]
        a[0]=temp
        siftDown(a, 0, end)
        end = end -1

    rtc_stopBenchmarkMeasurement()

def rtcbench_hsort():
    NUMNUMBERS = 1000
    numbers = []

    for i in range(0, NUMNUMBERS):
        numbers.append(NUMNUMBERS - 1 - i)

    rtcbenchmark_measure_native_performance_hsort(NUMNUMBERS, numbers)

rtcbench_hsort()
