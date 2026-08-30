#!/bin/bash

string1="$1"
string2="$2"

if [[ -z "${string1}" ]] || [[ -z "${string2}" ]]; then
echo "etheir string1 or string2 does not exists"
exit
fi

if [[ "${string1}" == *"${string2}"* ]]; then
echo "string2: ${string2} is a sub string of string1: ${string1}"
else
echo "string2: ${string2} is not a sub string of string1: ${string1}"
fi
