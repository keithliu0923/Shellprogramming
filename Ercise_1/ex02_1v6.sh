#!/bin/bash
# Shorten Math Version 
year=`date +%Y`
count=1
while [ $count -lt $1 ]
do
	if [ $(($year%400)) -eq 0 ] || [ $(($year %4))  -eq 0 -a $(($year%100)) -ne 0 ]
	then
	        echo -e $count ":\t"$year
		((count++)) 	
	fi
	((year++))
done
