#!/bin/bash

input="/home/rishabh/F/MTECH/Software-Systems-Development/ASSG-1/crontab_file.txt"
while IFS= read -r line
do
  $line  > /dev/null 2>&1 
  if [ $? -eq 0 ]
  then
	echo "Yes"
  else
	echo "No"
  fi
  #echo "$line"
done < "$input"

