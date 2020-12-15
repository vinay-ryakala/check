#!/bin/bash 

read -p "give a number" range1
read -p "give a number" range2

for (( number=$range1; number<=$range2; number++ ))
do
	prime=0
	for (( i=2; i<$number; i++ ))
	do
		if [ $((number%$i)) -eq 0 ]
		then
			prime=1
		break
		fi
	done
	if [ $prime -eq 0 ]
	then
		echo "$number is prime"
	fi
done
