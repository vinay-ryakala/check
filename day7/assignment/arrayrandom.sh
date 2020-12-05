#!/bin/bash 

for (( i=0; i<=9; i++ ))
do
	numbers[i]=$((100+$((RANDOM%900))))
done
max=${numbers[0]}
max1=${numbers[1]}

echo "${numbers[@]}"
for (( j=2; j<=9; j++ ))
		do
		if [ $max -lt $max1 ]
			then a=$max
				max=$max1
				max1=$a
		fi
		if [ $max -lt ${numbers[j]} ]
			then	
				max=${numbers[j]}
	      	fi
     		if [[ $max -gt ${numbers[j]} && $max1 -lt ${numbers[j]} ]]
			then
			max1=${numbers[j]}

		fi
		done
	
echo "second maximum number: $max1"


