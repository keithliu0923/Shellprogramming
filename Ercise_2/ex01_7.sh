#!/bin/bash
for i in `seq 1 12`
do
	for j in `seq 1 10`
	do
		echo -ne $(($i * $j)) "\t"
	done
	echo " "
done

