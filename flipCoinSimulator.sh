#!/bin/bash

echo "*** COIN SIMULATION SCRIPT ***"

headCount=0
tailCount=0
temp=1

while (( $temp != 10 ))
do
	coinValue=$(($RANDOM%2))
	if (( $coinValue == 1 ))
	then
   	   ((headCount++))
	else
   	   ((tailCount++))
	fi
	((temp++))
done

echo "Head Count: $headCount";
echo "Tail Count: $tailCount";
