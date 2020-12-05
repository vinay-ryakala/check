#!/bin/bash 

n=1
while [ $n -lt 100 ]
do
	if [ $(($n%11)) -eq 0 ]
	then
		array[$n]=$n
	fi
	((n++))
done

echo "number having repeated digits from 0 to 100:${array[@]}"
