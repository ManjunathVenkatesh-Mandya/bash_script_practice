#!/bin/bash



sum_of_numbers=0

for num in "$@" ; do
	((sum_of_numbers=sum_of_numbers+num))
done

echo "sum of all given numbers is: $sum_of_numbers"
