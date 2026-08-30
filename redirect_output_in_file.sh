#!/bin/bash


if grep -iw "$1" "$2" > /dev/null; then
echo "found string '$1' in file $2"
else 
echo "string not found"
fi

