#!/bin/bash

biggest="$1"

for num in "$@" ; do
	if (( num > "$biggest")); then
	((biggest=$num))
	fi
done
echo "Biggest number is $biggest"
