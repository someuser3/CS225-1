#!/bin/bash

VALID="false"

while [ "$VALID" = 'false' ]
do
	echo "Please enter a number: "
	read NUM

	if [[ -z $NUM ]] ;then
		echo "No input."
		VALID="false"
	elif [[ $NUM =~ ^[+]?[-]?[0-9]+$ ]] ;then 
		if [[ "$NUM" != '0' ]] ;then
			NUM1=$(echo $NUM | sed 's/^[+-0]*//')
			if ((NUM1%2==0)) ;then
				echo "${NUM} is a even number."
				VALID="true"
			else
				echo "${NUM} is a odd number."
				VALID="true"
			fi
		else
			echo "${NUM} is a even number."
			VALID="true"
		fi 
	else
		echo "${NUM} is a invalid number."
		VALID="false"
	fi
done
