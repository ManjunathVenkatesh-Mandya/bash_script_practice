#!/bin/bash

count=0
while`Z read line ; do
((count++))
echo "$count)" "$line"
done<input.txt
