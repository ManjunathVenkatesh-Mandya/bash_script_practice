#!/bin/bash

grep -i "$1" "$2"
result=$?

echo $result


if [[ $result -eq 0 ]]; then
echo "Found string '$1' in a file $2"
fi

if [[ $result -gt 0 ]]; then
echo "string '$1' not found in a file $2"
fi



