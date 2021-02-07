#!/bin/bash
read opr
#echo $opr
read n
for((i=1;i<=n;i++));
do
	read operand
	if [ $i -eq 1 ]
	then
		result=$operand
		continue
	fi
	case $opr in
		"+")
			result=`echo "scale=5; $result+$operand" | bc`;;
		"-")
			result=`echo "scale=5; $result-$operand" | bc`;;
		"*")
			result=`echo "scale=5; $result*$operand" | bc`;;
		"/")
			result=`echo "scale=5; $result/$operand" | bc` ;;
	esac
done
echo "$result" | xargs printf "%.*f\n" 4 | sed '/\./ s/\.\{0,1\}0\{1,\}$//'
