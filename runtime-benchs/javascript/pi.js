
function ComputePi(numdigits, pi)
{
    let alength = Math.trunc(10 * numdigits / 3);
    let a = [];
    let piLength = 0;
    let nines = 0;
    let predigit = 0;
    let i;
    let j;

    for(i = 0; i < alength; ++i)
        a[i] = 2;

    for (j = 0; j < numdigits; ++j)
    {
        let q = 0;
        let p = 2 * alength - 1;
        for (i = alength; --i >= 0; )
        {
            let x = 10*a[i] + q*(i+1);
            a[i] = x % p;
            q = Math.trunc(x / p);
            p -= 2;
        }

        a[0] = q % 10;
        q = Math.trunc(q/10);
        if (q === 9)
            ++nines;
        else if (q === 10)
        {
            let k;
            pi[piLength] = predigit + 1;
            for (k = 1; k <= nines; ++k){
                pi[piLength+k] = 0;
            }

            piLength += nines + 1;
            predigit = 0;
            nines = 0;
        }
        else
        {
            let k;
            pi[piLength] = predigit;
            predigit = q;
            for (k = 1; k <= nines; ++k) {
                pi[piLength + k] = 9;
            }
            piLength += nines + 1;
            nines = 0;
        }
    }
    pi[piLength] = predigit;
}

function rtcbench_pi()
{
    let numdigits = 40;
    let pi = [];

    console.time("rtc")
    ComputePi(numdigits, pi);
    console.timeEnd("rtc")
    console.log(pi)
}
rtcbench_pi()