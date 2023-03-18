#!/bin/bash

echo "*** COIN SIMULATION SCRIPT ***"

headCount=0
tailCount=0

while (( $headCount != 21 && $tailCount != 21 ))
do
	coinValue=$(($RANDOM%2))
	if (( $coinValue == 1 ))
	then
   	   ((headCount++))
	else
   	   ((tailCount++))
	fi
done

echo "Head Count: $headCount";
echo "Tail Count: $tailCount";

if (( $headCount > $tailCount ))
then
   result1=$(($headCount-$tailCount))
   echo "Head count won by: $result1"
elif (( $tailCount > $headCount ))
then
   result2=$(($tailCount-$headCount))
   echo "Tail count won by: $result2"
else
   echo "TIE";
fi

