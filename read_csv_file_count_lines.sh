#create a bash script that reads a CSV file and prits the number of lines in it.


#!/bin/bash

file="$1"

lines=$(wc -l < "$file")
lines=$((lines-1)) #it excludes header in a file

echo "Number of lines in CSV file $file are: $lines"
