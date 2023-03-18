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

newHeadResult=0
newTailResult=0

if (( $headCount > $tailCount ))
then
   result1=$(($headCount-$tailCount))
   echo "Head count won by: $result1"
elif (( $tailCount > $headCount ))
then
   result2=$(($tailCount-$headCount))
   echo "Tail count won by: $result2"
else
   echo "!!! TIE !!!";
   while (( $newHeadResult < 3 && $newTailResult < 3 ))
   do
   	newCoinValue=$(($RANDOM%2))
   	if (( $newCoinValue == 1 ))
        then
           ((headCount++))
   	   newHeadResult=$(($headCount-$tailCount))
        else
           ((tailCount++))
	   newTailResult=$(($tailCount-$headCount))
        fi
   done
   echo "Head Count after TIE: $headCount";
   echo "Tail Count after TIE: $tailCount";
fi
