#!/bin/bash
array=($(ps -au | awk '(NR>1){print $2}' | sort -n))
echo "${array[*]}" > pid.txt
read n
len=${#array[@]}
if [ $n -gt $len ]
then
	n=$len
fi
for((i=0;i<n;i++));
do
	echo ${array[$i]}
done
