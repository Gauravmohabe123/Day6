#!/bin/bash -x


read -p "Enter the lower limit " low
read -p "Enter the upper limit " up
echo "prime no. in given range are $low and $up "
while(( $low <= $up))
do
	i=2
	flag=0
	while(($i <= $low/2))
	do
	if(($low % $i == 0 ))
	then
	flag=1
	break
	fi
	i=$(( $i + 1 ))
	done
	if(( $flag == 0 ))
	then
	echo $low
	fi
	low=$(($low + 1 ))
done
