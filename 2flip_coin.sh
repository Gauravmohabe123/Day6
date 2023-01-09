#!/bin/bash -x

echo "flip coin problem"

random=$((RANDOM%2))

isTail=1;

if [ $isTail -eq $random ]
then
	echo "this is Tail";
else
	echo "this is head";
fi
