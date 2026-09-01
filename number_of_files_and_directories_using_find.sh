#write a bash script that takes a directory path as an argument and counts the number of files and directories in that directory.

#!/bin/bash


directory="$1"

files=$(find "$directory" -maxdepth 1 -type f | wc -l)
directories=$(find "$directory" -maxdepth 1 -type d | wc -l)

directories=$((directories-1))

#count include current directory also so we have to subtract 1 directory from total number of directories

echo "Number of files in directory $directory are: $files"
echo "Number of directories in directory $directory are : $directories"



