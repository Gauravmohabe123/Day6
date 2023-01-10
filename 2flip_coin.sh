#!/bin/bash -x

head_count=0
tail_counts=0

while [[ $head_counts -lt 11 && $tail_coin -lt 11 ]]

do
 num=$((RANDOM % 2))


if [ $num -eq 0 ]

then
head_counts=$(($head_counts+1))
 echo "Head"

else
tail_counts=$(($tail_counts+1))

echo "Tail"
fi
done
if [ $(($head_counts)) -gt $(($tail_counts)) ]
then
echo "Head won"

elif [ $(($tail_counts)) -gt $(($head_counts)) ]
then
echo "Tail won"
fi
