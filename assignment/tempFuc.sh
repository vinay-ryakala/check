#!/bin/bash -x

function temp(){
deg=$1
n=$2
case $n in
	1)
	if [[ 0 -lt $deg && $deg -lt 100 ]]
	then
	echo | awk '{ print ($deg*9/5)+32}'
	else
	echo "invalid input"
	fi
	;;
	2)
	if [[ 32 -lt $deg && $deg -lt 212 ]]
	then
	echo | awk '{ print ($deg-32)*5/9}' 
	else
	echo "invalid input"
	fi
	;;
	*)
	echo "wrong input"
esac
}
echo "F to C=1"
echo "C to F=2"
read -p "give tem to convert" tem
read -p "select option to convert" sel
result="$( temp $tem $sel )"
echo "result"
