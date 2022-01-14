import time
global start_time
def rtc_startBench():
    global start_time
    start_time = time.ticks_ms()


def rtc_stopBench():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)
    
    
def rtcbenchmark_measure_native_performance_outlier(NUMNUMBERS, buffer, distance_matrix, distance_threshold, outliers):
    rtc_startBench()

    sub_start = 0
    for i in range(0, NUMNUMBERS):
        hor = sub_start
        ver = sub_start
        for j in range(i, NUMNUMBERS):
            buffer_i = buffer[i]
            buffer_j = buffer[j]
            if buffer_i > buffer_j:
                diff = buffer_i - buffer_j
                distance_matrix[hor] = diff
                distance_matrix[ver] = diff
            else:
                diff = buffer_j - buffer_i
                distance_matrix[hor] = diff
                distance_matrix[ver] = diff
            hor = hor + 1
            ver += NUMNUMBERS
        sub_start += NUMNUMBERS + 1
    k = 0

    for i in range(0,NUMNUMBERS):
        exceed_threshold_count = 0
        for j in range(0,NUMNUMBERS):
            if distance_matrix[k] > distance_threshold:
                exceed_threshold_count = exceed_threshold_count+1
            k = k + 1
        if exceed_threshold_count > (NUMNUMBERS >> 1):
            outliers[i] = 1
        else:
            outliers[i] = 0
    rtc_stopBench()


def rtcbench_outlier():
    NUMNUMBERS = 20
    buffer = []
    distrance_matrix = [0]*(NUMNUMBERS*NUMNUMBERS)
    outliers = [0]*NUMNUMBERS

    for i in range(0, NUMNUMBERS):
        buffer.append(i)

    buffer[2] = 1000
    buffer[11] = -1000

    rtcbenchmark_measure_native_performance_outlier(NUMNUMBERS, buffer, distrance_matrix, 500, outliers);

    for i in range(0, NUMNUMBERS):
        print(outliers[i])
        if outliers[i] == 1:
            print(i)
            
            
rtcbench_outlier()
