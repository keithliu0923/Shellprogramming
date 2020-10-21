#!/bin/bash
read -p  'what is your number?' num
sum=0
for count in `seq 1 $num`
do
	sum=`expr $count + $sum`
done
echo "Result: $sum" 
