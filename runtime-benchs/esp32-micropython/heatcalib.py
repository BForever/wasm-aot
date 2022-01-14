import time
global start_time
def rtc_startBench():
    global start_time
    start_time = time.ticks_ms()


def rtc_stopBench():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)


import random
import math

ACal = [0] * 64
QCal = [0] * 64
stdCal = [0]*64
zscore = []
heat_sensor_data = []

def generate_sensor_data():
    for i in range(0, 101):
        l = []
        for j in range(0, 64):
            r = random.random()
            if r < (1/3):
                l.append(2575)
            elif r < 2/3:
                l.append(2600)
            else:
                l.append(2625)
        heat_sensor_data.append(l)
    # print(heat_sensor_data)


def get_heat_sensor_data(frame_buffer, frame_number):
    for i in range(0, 64):
        frame_buffer.append(heat_sensor_data[frame_number][i])
    return frame_number


def heat_calib():
    frame_buffer = []
    for i in range(0, 100):
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

    stdCal = [math.isqrt(int(QCal[i] / (frame_number + 1))) for i in range(0, 64)]
    for i in range(0, 64):
        if stdCal[i] == 0:
            stdCal[i] = 1

def zscoreCalculation(frame_buffer):

    tempMax = -300000
    tempMin = 300000

    for i in range(0, 64):
        score = 100 * (int(frame_buffer[i]) - int(ACal[i])) / stdCal[i]

        zscore.append(score)

        if (score > tempMax):
            tempMax = score

        if (score < tempMin):
            tempMin = score

    z_max = tempMax
    z_min = tempMin



generate_sensor_data()
rtc_startBench()

heat_calib()
rtc_stopBench()

