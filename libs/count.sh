#!/bin/bash
echo "">result.output.txt
index=0
for filename in `find . -name "*.wasmoutput.txt"`
do
    filelist[$index]=$filename
    index=`expr $index + 1`
    echo "found wasm output file $filename"
done

for filename in ${filelist[*]}
do 
    echo "in $filename :" >>result.output.txt
    startlist=`cat ${filename} |grep "benchmark start"|tr " " "\n"`
    index=0
    for var in ${startlist[@]}
    do
        index=`expr $index + 1`
        if test $index -eq 2
        then
            start=$var
            break
        fi
    done

    stoplist=`cat ${filename} |grep "benchmark stop"|tr " " "\n"`
    index=0
    for var in ${stoplist[@]}
    do
        index=`expr $index + 1`
        if test $index -eq 2
        then
            stop=$var
            break
        fi
    done

    # echo "$start">>result.output.txt
    # echo "$stop">>result.output.txt
    echo `expr $stop - $start`>>result.output.txt
done

index=0
for filename in `find . -name "*.nativeoutput.txt"`
do
    filelist[$index]=$filename
    index=`expr $index + 1`
    echo "found wasm output file $filename"
done

for filename in ${filelist[*]}
do 
    echo "in $filename :" >>result.output.txt
    startlist=`cat ${filename} |grep "benchstart"|tr " " "\n"`
    index=0
    for var in ${startlist[@]}
    do
        index=`expr $index + 1`
        if test $index -eq 2
        then
            start=$var
            break
        fi
    done

    stoplist=`cat ${filename} |grep "benchstop"|tr " " "\n"`
    index=0
    for var in ${stoplist[@]}
    do
        index=`expr $index + 1`
        if test $index -eq 2
        then
            stop=$var
            break
        fi
    done

    # echo "$start">>result.output.txt
    # echo "$stop">>result.output.txt
    echo `expr $stop - $start`>>result.output.txt
done