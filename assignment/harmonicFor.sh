#!/bin/bash 


read -p "give a number" number

for (( i=1;i<=$number; i++ ))
do
	if [ $i -eq 1 ]
	then
		echo -n "harmonic number:1+"
	elif [ $i -lt $number ]
	then
		echo -n "1/$i+"
	else
		echo -n "1/$number"	
	fi
done
