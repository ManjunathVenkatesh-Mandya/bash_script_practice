#create a bash script that reads a csv file and prints 2nd and 5th column in it.



#!/bin/bash


file="$1"


awk -F ',' '{print $2, $5}' "$file"
