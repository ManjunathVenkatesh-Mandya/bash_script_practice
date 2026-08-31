#!/bin/bash


read -p "Enter first number:" num1
read -p "Enter second number:" num2

if [[ "$num1" -gt "$num2" ]] ; then
	echo "number $num1 is biggest"
else
	echo "number $num2 is biggest"
fi


