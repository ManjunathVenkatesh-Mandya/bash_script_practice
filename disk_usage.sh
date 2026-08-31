#!/bin/bash

usage=$(df / | awk 'NR==2 {print $5}'| tr -d '%')

if [[ "$usage" -ge 20 ]];  then 
	echo "Server disk usage : ${usage}%." | mail -s "Server disk usage alert" manjunath1933@gmail.com

fi
