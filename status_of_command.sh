#!/bin/bash

grep -qiw "$1" "$2"

if [[ $? -eq 0 ]]; then
echo "yes, string $1 found in file $2"
fi



if grep -iqw "$1" "$2"; then
echo -e "yes, string '$1' found in file $2"
else
echo "string '$1' not fund in file $2"
fi

if [[ -n "$(grep -iw "$1" "$2")" ]]; then
echo "yes, string '$1' found in file $2"
else
echo "string '$1' not fund in file $2"

fi

