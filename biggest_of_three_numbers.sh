#!/bin/bash

num1="$1"
num2="$2"
num3="$3"


if (( "$num1" >= "$num2" )) && (( "$num1" >= "$num3" )); then
	echo "Number $num1 is biggest"
elif(( "$num2" >= "$num1" )) && (( "$num2" >= "$num3" )); then
	echo "Number $num2 is biggest"
else
	echo "Number $num3 is biggest"
fi 
