#!/bin/bash
read -p  'what is your number?' num
read -p  'sum or product (s/p)?' mode
result=1
for count in `seq 2 $num`
do
	 [ $mode = 's' ] && result=`expr $count + $result`
	 [ $mode = 'p' ] && result=`expr $count \* $result`
done
echo "Result: $result" 
