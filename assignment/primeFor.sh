#!/bin/bash -x

read -p "give number to find prime" number

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
else
	echo "$number is not a prime"
fi
