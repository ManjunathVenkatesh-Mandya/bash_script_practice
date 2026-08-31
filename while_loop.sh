#!/bin/bash

count=10

while [[ $count -ge 1 ]] ; do
	echo "$count"
	((count--))
done
