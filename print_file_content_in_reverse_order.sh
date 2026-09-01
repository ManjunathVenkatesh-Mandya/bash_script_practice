#!/bin/bash

#write a script to reverse a file content using without tac


file="$1"
lines=()
while read -r line; do

# -r prints / aswell, treats / not an escape charcter

lines+=($line)

done<"$file"

for (( i= ${#lines[@]}-1; i>=0; i-- )); do
	echo "${lines[i]}"
done

