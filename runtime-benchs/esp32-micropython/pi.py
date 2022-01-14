import time
global start_time
def rtc_startBench():
    global start_time
    start_time = time.ticks_ms()


def rtc_stopBench():
    global start_time
    delta = time.ticks_diff(time.ticks_ms(),start_time)
    print(delta)


def ComputePi(numdigits):
    pi = ""
    a = [2] * int(10*numdigits / int(3))
    nines = 0
    predigit = 0
    for j in range(0, numdigits):
        q = 0
        p = 2 * len(a) - 1
        for i in range(len(a)-1, -1, -1):
            x = 10*a[i] + q*(i+1)
            q, a[i] = divmod(x, p)
            p -= 2


        a[0] = q % 10
        q /= 10
        if q == 9:
            nines += 1
        elif q == 10:
            pi += chr(int(predigit + 1 + ord('0')))
            pi += "0" * nines
            predigit = 0
            nines = 0
        else:
            pi += chr(int((predigit + ord('0'))))
            predigit = q
            pi += "9" * nines
            nines = 0

    pi += chr(int(predigit + ord('0')))
    return pi
    

rtc_startBench()
print(ComputePi(40))
rtc_stopBench()
