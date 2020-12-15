#!/bin/bash -x

read -p "give a number to guess" number
min=0
max=100
x=0
while [ $x != $number ]
do
	y=$(($max+$min))
	if [ $(($y/2)) -lt $number ]
	then
	min=$(($y/2))
	elif [ $(($y/2)) -gt $number ]
	then
	max=$(($y/2))
	else
	x=$number
	fi
done
echo "$x"
