#!/bin/bash


smallest="$1"


for num in "$@" ; do
	if (( num  < "$smallest" )) ; then
		((smallest=$num))
	fi
done

echo "Smallest number in the given numbers is: $smallest"
