#!/bin/bash 

for (( k=0; k<=9; k++ ))
do
numbers[k]=$((100+$((RANDOM%900))))
done
echo "${numbers[@]}"
for (( i=0; i<=9; i++ ))
do
	for (( j=$i; j<=9; j++ ))
	do
		if [ ${numbers[i]} -gt ${numbers[j]} ]
		then
			temp=${numbers[j]}
	                numbers[$j]=${numbers[i]}
			numbers[$i]=$temp
		fi
	done
done
echo "${numbers[@]}"
echo "second smallest number:${numbers[1]}"
echo "second largest number:${numbers[8]}"
