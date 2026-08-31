#!/bin/bash

#loop using space separated values

for str in Manju Vara Suni ; do
	echo "$str"
done


#loop using range of values

for num in {1..10}; do
	echo "$num"
done


#loop using command(print all .sh files and assign execute permission if not executable)

for file in $(find /home/ubuntu/bash_script_practice -type f -iname "*.sh"); do
	if [[ -x "$file" ]]; then
		echo "EXECUTABLE: $(basename $file)"
	else
		echo "NOT EXECUTABLE: $file"
		sudo chmod x+u "$file"
		if [[ -x "$file" ]] ; then
			echo "permission assignd to EXECUTABLE: $file"
		fi
	fi
done

#for using array of values

fruits=([0]="Apple" [1]="Kiwi" [2]="Banana")

for fruit in ${fruits[@]}; do
	echo "Fruit: $fruit"
done



#for to print odd number within range(start, end, stepvalue)

for even_number in {2..20..2}; do
	echo "$even_number"
done

#for using C syntax

for(( num=1 ; num<5 ; num++ )); do
echo "$num"
done


