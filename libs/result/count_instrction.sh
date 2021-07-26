#!/bin/bash
rm *.ins

# index=0
# for filename in `find . -name "*.wasmoutput.txt"`
# do
#     filelist[$index]=$filename
#     index=`expr $index + 1`
#     echo "found wasm output file $filename"
# done
# for filename in ${filelist[*]}
# do 
#     linelist=`cat ${filename} |grep -w "instruction"`
#     index=0
#     for line in ${linelist[@]}
#     do
#         index=`expr $index + 1`
        
#         if test $index -eq 8
#         then
#             index=0
#             echo $line >>$filename.ins
#         fi
#     done
# done

index=0
for filename in `find . -name "cape*.txt"`
do
    filelist2[$index]=$filename
    index=`expr $index + 1`
    echo "found capevm output file $filename"
done
for filename in ${filelist2[*]}
do 
    linelist=`cat ${filename} |grep -o "\[instruction\] [0-9A-Z]*"`
    index=0
    for line in ${linelist[@]}
    do
        index=`expr $index + 1`
        
        if test $index -eq 2
        then
            index=0
            echo $line >>$filename.ins
        fi
    done
done