#!/bin/bash
# Auto get current year and $1 for number of years 
year=`date +%Y`
count=1
while [ $count -lt $1 ]
do
   if [ `expr $year % 400` -eq 0 ] || [ `expr $year  % 4`  -eq 0 -a `expr $year % 100` -ne 0 ]
	then
	        echo -e $count ":\t"$year
	        count=`expr $count + 1` 	
	fi
   year=`expr $year + 1`
done
