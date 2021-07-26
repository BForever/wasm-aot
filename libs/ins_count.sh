rm result.csv
index=0
# for filename in `find result/ -name "cape*_test.txt"`
# do
#     filelist[$index]=$filename
#     index=`expr $index + 1`
#     # echo "found ins output file $filename"
# done

for filename in `find result/ -name "*wasmoutput.txt"`
do
    filelist[$index]=$filename
    index=`expr $index + 1`
    # echo "found ins output file $filename"
done

echo "filename,ins,num" >> result.csv

for filename in ${filelist[*]}
do 
    echo $filename
    ./ins_count $filename >> result.csv
done