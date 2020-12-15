#!/bin/bash 

winCount=0
totalCount=100
lossCount=0
win=1
loss=0

while [ $totalCount -gt 0 ]
do
	result=$((RANDOM%2))
	if [ $result -eq $win ]
	then
		winCount=$(($winCount+1))
		bet=1
	else
		lossCount=$(($lossCount+1))
		bet=-1
	fi
	totalCount=$(( $totalCount+$bet ))
	if [ $totalCount -eq 200 ]
	then
		break
	fi
done
echo "won $winCount times "
echo "lost bet $lossCount times"
