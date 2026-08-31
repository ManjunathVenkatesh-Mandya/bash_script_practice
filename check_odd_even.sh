#!/bin/bash

read -p "Enter a number:" num

if (( num % 2 == 0)) ; then
	echo "the entered number $num is Even Number"
else
	echo "the entered number $num is Odd Number"
fi


