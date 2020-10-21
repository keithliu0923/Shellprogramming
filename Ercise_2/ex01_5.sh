#!/bin/bash
read -p  'what is your number?' num
sum=0
for count in `seq 1 $num`
do
	if [ `expr $count % 3` -eq 0 ] || [ `expr $count % 5` -eq 0 ]
	then
	       	sum=`expr $count + $sum`
	fi
done
echo "Result: $sum" 
