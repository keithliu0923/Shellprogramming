#!/bin/bash
# Leap Year Hack with Date Function 
year=`date +%Y`
count=1
while [ $count -lt $1 ]
do
   date -d $year-02-29 &> /dev/null
	   if [ $? -eq 0 ]
		then
	        echo -e $count ":\t"$year
	        count=`expr $count + 1` 	
	fi
   year=`expr $year + 1`
done
