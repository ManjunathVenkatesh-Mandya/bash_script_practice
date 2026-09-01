#write a bash script that that takes a directory path as an argument and counts the number of files and direcotries in that directoryusing for loop.


#!/bin/bash


directory="$1"

files=0
directories=0

for item in "$directory"/* ; do
# /* inside / directory mach * all
	if [[ -f "$item" ]] ; then
		((files++))
	elif [[ -d "$item" ]] ; then
		((directories++))
	fi
done

echo "Number of files are: $files"

echo "Number of directories are: $directories"
