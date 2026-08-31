#!/bin/bash

read -p "Enter a length to print fibonacci numbers:" length


a=0
b=1

for (( i=1; i<=length; i++ )); do
	echo -n "${a},"
	next_num=$((a+b))
	a=$b
	b=$next_num
done
echo


