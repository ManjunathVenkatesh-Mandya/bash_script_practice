#!/bin/bash

count=0
while read line ; do
((count++))
echo "$count)" "$line"
done<input.txt
