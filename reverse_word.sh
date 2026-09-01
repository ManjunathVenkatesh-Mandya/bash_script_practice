#Write a Script to reverse Print a word without using 'rev'

#!/bin/bash

read -p "Enter a word to be reversed: " word

reverse_word=""

for (( letter= ${#word}-1 ; letter>=0 ; letter-- )); do
	reverse_word+="${word:letter:1}"
done
echo "reverse word is : $reverse_word"
