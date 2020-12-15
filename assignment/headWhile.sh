#!/bin/bash  

headsCount=0
totalCount=0
tailsCount=0
Heads=1
Tails=0
while [ $totalCount -lt 11 ]
do
	result=$((RANDOM%2))
	if [ $result -eq $Heads ]
	then
		headsCount=$(($headsCount+1))
	else
		tailsCount=$(($tailsCount+1))
	fi
	if [ $headsCount -gt $tailsCount ]
	then
		totalCount=$headsCount
	else
		totalCount=$tailsCount
	fi
done
if [ $headsCount -eq 11 ]
then
	echo "Heads is $headsCount times"
else
	echo "tailsis $tailsCount times"
fi
