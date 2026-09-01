#Create a Bash script that reads a log file and extracts all IP addresses that made more than 100 requests in a given time frame.

#!/bin/bash

logfiles="$1"

awk '{print $1' "$logfiles"| sort | unique -c | awk '$1>100 {print $2}' 

