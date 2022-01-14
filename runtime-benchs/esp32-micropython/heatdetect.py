import time

global start_time
global elapsed

def rtc_startBench():
    global start_time
    global elapsed
    elapsed = 0
    start_time = time.ticks_ms()


def rtc_pauseBench():
    global elapsed
    pause_time = time.ticks_ms()
    elapsed += time.ticks_diff(pause_time, start_time)


def rtc_restartBench():
    global start_time
    start_time = time.ticks_ms()


def rtc_stopBench():
    global elapsed
    now = time.ticks_ms()
    elapsed += time.ticks_diff(now, start_time)
    print(elapsed)


import random
import math

ACal = [0] * 64
QCal = [0] * 64
stdCal = [0] * 64
zscore = []
zscoreWeight = [0] *64

def get_heat_sensor_data(frame_buffer, frame_number):
    rtc_pauseBench()
    temp = []
    for i in range(0, 64):
        r = random.random()
        temp.append(2425 + int(r * 20) * 25)
    rtc_restartBench()

    for i in range(0, 64):
        frame_buffer.append(temp[i])
    return frame_number


def heat_calib():
    for i in range(0, 100):
        frame_buffer = []
        get_heat_sensor_data(frame_buffer, i)
        fast_calibration(frame_buffer, i)
    get_heat_sensor_data(frame_buffer, 100)
    zscoreCalculation(frame_buffer)


def rounding_int_division(dividend, divisor):
    return int((dividend + divisor / 2) / divisor)


def fast_calibration(frame_buffer, frame_number):
    global stdCal
    global ACal
    global QCal
    for i in range(0, 64):
        previous_ACal = ACal[i]
        ACal[i] += rounding_int_division(frame_buffer[i] - ACal[i],
                                         frame_number + 1)
        QCal[i] += (frame_buffer[i] - previous_ACal) * (
                frame_buffer[i] - ACal[i])

    stdCal = [math.sqrt(int(QCal[i] / (frame_number + 1))) for i in
              range(0, 64)]
    for i in range(0, 64):
        if stdCal[i] == 0:
            stdCal[i] = 1


def zscoreCalculation(frame_buffer):
    tempMax = -300000
    tempMin = 300000
    global zscore
    zscore = [0]*64
    for i in range(0, 64):
        score = 100 * (int(frame_buffer[i]) - int(ACal[i])) / stdCal[i]

        zscore.append(score)

        if (score > tempMax):
            tempMax = score

        if (score < tempMin):
            tempMin = score

    z_max = tempMax
    z_min = tempMin



THRESHOLD_LEVEL1 = 2
THRESHOLD_LEVEL2 = 3
RED = 4
ORANGE = 3
YELLOW = 2
WHITE = 1

ARRAY_SIZE = 8
WAITTOCHECK = 90
CHECKED = 91
NEIGHBOR = 92
BOUNDARY = 99

LEFT_UP = 7
RIGHT_UP = 63
LEFT_DOWN = 0
RIGHT_DOWN = 56

neighbor = []

x_weight_coordinate = 0
y_weight_coordinate = 0
xh_weight_coordinate = 0
yh_weight_coordinate = 0

yellowGroupH = 0
yellowGroupL = 0
orangeGroupH = 0
orangeGroupL = 0
redGroupH = 0
redGroupL = 0


zscore_threshold_high = 1000
zscore_threshold_low = 500
zscore_threshold_hot = 5000
zscore_threshold_recal = 1000


def heat_detect(frame_buffer, color, rColor, largestSubset, testset, result):
    zscoreCalculation(frame_buffer)

    maxSubsetLen = [0]
    get_largest_subset(largestSubset, maxSubsetLen, testset, result)

    reset_log_variable(color)


def get_largest_subset(largestSubset, maxSubsetLen, testset, result):
    global zscoreWeight
    pixelCount = 0

    for i in range(0, 64):
        if (zscore[i] > zscore_threshold_high):
            testset[pixelCount] = i
            pixelCount = pixelCount + 1
            zscoreWeight[i] = 1
        elif (zscore[i] > zscore_threshold_low):
            if (zscoreWeight[i] or check_neighbor_zscore_weight(i)):
                testset[pixelCount] = i
                pixelCount = pixelCount + 1
                zscoreWeight[i] = 1
        else:
            zscoreWeight[i] = 0
    testset[pixelCount] = BOUNDARY

    find_largestSubset(testset, pixelCount, maxSubsetLen, largestSubset, result)

    if (maxSubsetLen[0] == 1):
        maxSubsetLen[0] = 0
        largestSubset[0] = -1


def find_largestSubset(testset, testsetLen, maxSubsetLen, largestSubset,
                       result):

    subsetNumber = 0
    startIndex = 0
    while (get_startIndex(testset, testsetLen, result, startIndex)):
        result[testset[startIndex]] = subsetNumber
        label_subset(testset, testsetLen, result, subsetNumber)
        subsetNumber = subsetNumber + 1

    select_largest_subset(testset, testsetLen, result, subsetNumber,
                          maxSubsetLen, largestSubset)


def select_largest_subset(testset, testsetLen, result, subsetNumber,
                          maxSubsetLen, largestSubset):
    maxSubsetNumber = 0
    for i in range(0, subsetNumber):
        lengthCount = 0
        for j in range(0, testsetLen):
            if (result[testset[j]] == i):
                lengthCount = lengthCount + 1

        if (lengthCount > maxSubsetLen[0]):
            maxSubsetLen[0] = lengthCount
            maxSubsetNumber = i

    index = 0
    for i in range(0, 64):
        if (result[i] == maxSubsetNumber):
            largestSubset[index] = i
            index = index + 1


def reset_log_variable(color):
    global x_weight_coordinate
    global y_weight_coordinate
    global xh_weight_coordinate
    global yh_weight_coordinate
    global yellowGroupH
    global yellowGroupL
    global orangeGroupH
    global orangeGroupL
    global redGroupH
    global redGroupL

    x_weight_coordinate = -1
    y_weight_coordinate = -1
    xh_weight_coordinate = -1
    yh_weight_coordinate = -1

    yellowGroupH = 0
    yellowGroupL = 0
    orangeGroupH = 0
    orangeGroupL = 0
    redGroupH = 0
    redGroupL = 0


def get_startIndex(testset, testsetLen, result, startIndex):
    for i in range(0, testsetLen):
        if (result[testset[i]] == WAITTOCHECK):
            startIndex[0] = i
            return 1
    return 0


def label_subset(testset, testsetLen, result, subsetNumber):
    while label_neighbor(result, subsetNumber):
        for i in range(0, testsetLen):
            if result[testset[i]] == NEIGHBOR:
                result[testset[i]] = subsetNumber

        for i in range(0, 64):
            if result[i] == NEIGHBOR:
                result[i] = CHECKED


def get_eight_neighbor(loc, neighbor):
    for i in range(0, 8):
        neighbor[i] = -1

    if (loc / ARRAY_SIZE) == 0 and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc + 1
        neighbor[1] = loc + ARRAY_SIZE
        neighbor[2] = loc + ARRAY_SIZE + 1
    elif (loc / ARRAY_SIZE) == 0 and 0 < (loc % ARRAY_SIZE) < (ARRAY_SIZE - 1):
        neighbor[0] = loc - 1
        neighbor[1] = loc + 1
        neighbor[2] = loc + ARRAY_SIZE - 1
        neighbor[3] = loc + ARRAY_SIZE
        neighbor[4] = loc + ARRAY_SIZE + 1
    elif (loc / ARRAY_SIZE) == 0 and (loc % ARRAY_SIZE) == (ARRAY_SIZE - 1):
        neighbor[0] = loc - 1
        neighbor[1] = loc + ARRAY_SIZE - 1
        neighbor[2] = loc + ARRAY_SIZE
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - ARRAY_SIZE + 1
        neighbor[2] = loc + 1
        neighbor[3] = loc + ARRAY_SIZE
        neighbor[4] = loc + ARRAY_SIZE + 1
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and 0 < (
            loc % ARRAY_SIZE) < (ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE - 1
        neighbor[1] = loc - ARRAY_SIZE
        neighbor[2] = loc - ARRAY_SIZE + 1
        neighbor[3] = loc - 1
        neighbor[4] = loc + 1
        neighbor[5] = loc + ARRAY_SIZE - 1
        neighbor[6] = loc + ARRAY_SIZE
        neighbor[7] = loc + ARRAY_SIZE + 1
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE - 1
        neighbor[1] = loc - ARRAY_SIZE
        neighbor[2] = loc - 1
        neighbor[3] = loc + ARRAY_SIZE - 1
        neighbor[4] = loc + ARRAY_SIZE
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - ARRAY_SIZE + 1
        neighbor[2] = loc + 1
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and 0 < (loc % ARRAY_SIZE) < (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE - 1
        neighbor[1] = loc - ARRAY_SIZE
        neighbor[2] = loc - ARRAY_SIZE + 1
        neighbor[3] = loc - 1
        neighbor[4] = loc + 1
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE - 1
        neighbor[1] = loc - ARRAY_SIZE
        neighbor[2] = loc - 1


def get_four_neighbor(loc, neighbor):
    for i in range(0, 4):
        neighbor[i] = -1
    if (loc / ARRAY_SIZE) == 0 and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc + 1
        neighbor[1] = loc + ARRAY_SIZE
    elif (loc / ARRAY_SIZE) == 0 and 0 < (loc % ARRAY_SIZE) < (ARRAY_SIZE - 1):
        neighbor[0] = loc - 1
        neighbor[1] = loc + 1
        neighbor[2] = loc + ARRAY_SIZE
    elif (loc / ARRAY_SIZE) == 0 and (loc % ARRAY_SIZE) == (ARRAY_SIZE - 1):
        neighbor[0] = loc - 1
        neighbor[1] = loc + ARRAY_SIZE
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc + 1
        neighbor[2] = loc + ARRAY_SIZE
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and 0 < (
            loc % ARRAY_SIZE) < (ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - 1
        neighbor[2] = loc + 1
        neighbor[3] = loc + ARRAY_SIZE
    elif 0 < (loc / ARRAY_SIZE) < (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - 1
        neighbor[2] = loc + ARRAY_SIZE
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == 0:
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc + 1
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and 0 < (loc % ARRAY_SIZE) < (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - 1
        neighbor[2] = loc + 1
    elif (loc / ARRAY_SIZE) == (ARRAY_SIZE - 1) and (loc % ARRAY_SIZE) == (
            ARRAY_SIZE - 1):
        neighbor[0] = loc - ARRAY_SIZE
        neighbor[1] = loc - 1


def label_neighbor(result, subsetNumber):
    hasNeighbor = 0
    for i in range(0, 64):
        if (result[i] == subsetNumber):
            get_eight_neighbor(i, neighbor)
            for j in range(0, 8):
                if neighbor[i] != -1 and result[neighbor[i]] == WAITTOCHECK:
                    result[neighbor[j]] = NEIGHBOR
                    hasNeighbor = 1

    return hasNeighbor


def check_neighbor_zscore_weight(index):
    get_four_neighbor(index, neighbor)
    for i in range(0, 4):
        if neighbor[i] != -1:
            if zscoreWeight[neighbor[i]]:
                return 1
    return 0


def rtcbenchmark_measure_native_performance_heatdetect(frame_buffer, color,
                                                       rColor, largestSubset,
                                                       testset, result):
    for i in range(0, 25):
        get_heat_sensor_data(frame_buffer, 101 + i)
        heat_detect(frame_buffer, color, rColor, largestSubset, testset, result)


def rtcbench_heatdetect():
    rtc_startBench()
    heat_calib()

    frame_buffer = []
    color = [WHITE] *64
    rColor = []
    largestSubset = []
    testset = [0]*64
    result = [WAITTOCHECK]*64

    rtcbenchmark_measure_native_performance_heatdetect(frame_buffer, color,
                                                       rColor, largestSubset,
                                                       testset, result)
    rtc_stopBench()

rtcbench_heatdetect()

