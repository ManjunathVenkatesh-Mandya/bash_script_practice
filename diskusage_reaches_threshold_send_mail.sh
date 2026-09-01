#12. Write a Bash script that checks the disk usage of a specific directory and sends an email notification if the usage exceeds a certain threshold.


#!/bin/bash


directory="$1"
threshold="$2"

usage=$(du "$directory" | awk 'NR==2 {print $5}' | tr -d '%')

if [[ "$usage" > "$threshold" ]] ; then
	echo "disk usage $usage reached in directory $directory" | mail -s "directory disk usage alert" manjunath1933@gamil.com
else
	echo "disk usage $usage, no need to send alert mail"
fi

