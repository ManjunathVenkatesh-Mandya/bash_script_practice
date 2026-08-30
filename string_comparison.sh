#!/bin/bash


string1="$1"
string2="$2"

if [[ -z ${string1} ]]; then
echo "string1 not exist"
else
echo "string1 exits and it is ${string1}"
fi


if [[ -z ${string2} ]]; then
echo "string2 not exist"
else
echo "string2 exits and it is ${string2}"
fi

if [[ ${string1} == ${string2} ]]; then
echo "both strings ${string1} and ${string2} are equal"
else 
echo "both strings ${string1} and ${string2} are not equal"
fi


