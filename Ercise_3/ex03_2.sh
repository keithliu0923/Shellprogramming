#!/bin/bash

mark6gen(){
   count=0
   draw[$count]=`shuf -i 1-49 -n 1`
   ((count++))
   while [ $count -lt 7 ] 
   do
	   num=`shuf -i 1-49 -n 1`
	   repeated="no"
	   for i in ${draw[@]}
	   do
		if [ $i -eq $num ] ; then
		   repeated="yes"
		fi
	   done
	   if [ $repeated = "no" ]
	   then
		   draw[$count]=$num
		   ((count++))
	   fi
   done
   echo ${draw[0]}, ${draw[1]}, ${draw[2]}, ${draw[3]}, ${draw[4]}, ${draw[5]} '|' ${draw[6]}
}

for i in `seq -f "%03g" 1 100`
	do 
	   draw=`mark6gen`
	   echo "#$i $draw"
	done
