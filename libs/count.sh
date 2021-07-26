#!/bin/bash
echo "">result.output.txt
index=0
for filename in `find . -maxdepth 1 -name "*output.txt" `
do
    filelist[$index]=$filename
    index=`expr $index + 1`
    echo "found wasm output file $filename"
done

for filename in ${filelist[*]}
do 
    echo "in $filename :" >>result.output.txt
    start=`cat ${filename} |grep "trace enabled"|sed -ne "s/\s\+[[:digit:]]\+\s\+\([[:digit:]]\+\).*/\1/p"`
    stop=`cat ${filename} |grep "trace disabled"|tail -1|sed -ne "s/\s\+[[:digit:]]\+\s\+\([[:digit:]]\+\).*/\1/p"`
    echo "$start">>result.output.txt
    echo "$stop">>result.output.txt
    echo `expr $stop - $start`>>result.output.txt
done

# index=0
# for filename in `find . -name "*.nativeoutput.txt"`
# do
#     filelist[$index]=$filename
#     index=`expr $index + 1`
#     echo "found native output file $filename"
# done

# for filename in ${filelist[*]}
# do 
#     echo "in $filename :" >>result.output.txt
#     startlist=`cat ${filename} |grep "trace enabled"|sed -ne "s/\s\+[[:digit:]]\+\s\+\([[:digit:]]\+\).*/\1/p"
#     index=0
#     for var in ${startlist[@]}
#     do
#         index=`expr $index + 1`
#         if test $index -eq 2
#         then
#             start=$var
#             break
#         fi
#     done

#     stoplist=`cat ${filename} |grep "trace disabled"|tail -1|sed -ne "s/\s\+[[:digit:]]\+\s\+\([[:digit:]]\+\).*/\1/p"
#     index=0
#     for var in ${stoplist[@]}
#     do
#         index=`expr $index + 1`
#         if test $index -eq 2
#         then
#             stop=$var
#             break
#         fi
#     done

#     # echo "$start">>result.output.txt
#     # echo "$stop">>result.output.txt
#     echo `expr $stop - $start`>>result.output.txt
# done

