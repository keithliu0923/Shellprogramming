#!/bin/bash
# Modified Version with Two IF 
year=$1
count=1
while [ $count -lt 26 ]
do
   if [ `expr $year % 400` -eq 0 ]
   then
	echo -e $count ":\t" $year
        count=`expr $count + 1`	
   elif [ `expr $year  % 4`  -eq 0  ]  &&  [ `expr $year % 100` -ne 0 ]
	then
	        echo -e $count ":\t"$year
	        count=`expr $count + 1` 	
	fi
   year=`expr $year + 1`
done
