#!/bin/bash 

declare -A birthMonth
people=1
while [ $people -lt 50 ]
do
	
	month=$((1+RANDOM%12))
	case $month in
		1)
		birthMonth[$people]=$month
		;;
		2)
		 birthMonth[$people]=$month
	  ;;
		3)
		 birthMonth[$people]=$month
  		;;
		4)
		 birthMonth[$people]=$month
  		;;
		5)
       birthMonth[$people]=$month
       ;;
       6)
       birthMonth[$people]=$month
       ;;
       7)
        birthMonth[$people]=$month
       ;;
       8)
        birthMonth[$people]=$month
       ;;
  	   9)
       birthMonth[$people]=$month
        ;;
       10)
        birthMonth[$people]=$month
        ;;
        11)
        birthMonth[$people]=$month
        ;;
        12)
        birthMonth[$people]=$month
        ;;

	esac
	((people++))
done
for ((   Month=1; Month<=12; Month++ )) 
do
	declare -A sameMonth=()
	for  key in "${!birthMonth[@]}"
	do
		if [[ ${birthMonth[$key]} -eq $Month ]]
		then
			sameMonth[$key]=$key
		fi
	done
echo "persons born in month $Month are ${sameMonth[@]}"
done
echo "birth month" ${birthMonth[@]}
echo "persons" ${!birthMonth[@]}
