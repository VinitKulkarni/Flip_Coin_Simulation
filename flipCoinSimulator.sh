#!/bin/bash

echo "*** COIN SIMULATION SCRIPT ***"

coinValue=$(($RANDOM%2))

if (( $coinValue == 1 ))
then
   echo "Heads"
else
   echo "Tails"
fi
