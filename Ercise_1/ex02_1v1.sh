#!/bin/bash
# Basic Version ( using the basic algo on Wikipedia ) - 3 IF
year=$1
count=1
while [ $count -lt 26 ]
do
   if [ `expr $year % 4` -eq 0 ]
   then
        if [ `expr $year % 100` -eq 0 ] 
	then
                if [ `expr $year % 400` -eq 0 ]
                then
		    echo -e $count ":\t" $year
		    count=`expr $count + 1`
		fi
	else 
		echo -e $count ":\t" $year
                count=`expr $count + 1`	
     	fi
    fi 
    year=`expr $year + 1`
done
