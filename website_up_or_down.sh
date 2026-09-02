# Create a Bash script that takes a URL as input and checks if the website is up or down using the curl command->The script should print "Website is up" if the HTTP response is 200, and "Website is down" otherwise.


#!/bin/bash

url="$1"

status_code=$(curl -o /dev/null -s -w "%{http_code}" "$url")


if [ "$status_code" -eq 200 ] ; then
	echo "Website is up"
else
	echo "Website is down"
fi

