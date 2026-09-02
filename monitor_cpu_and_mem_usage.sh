#Create a Bash script that monitors the CPU and memory usage of a server and sends an alert if the usage exceeds a certain threshold. The script should also log the usage details with timestamp.

#!/bin/bash

CPU_THRESHOLD=80
MEM_THRESHOLD=80
LOG_FILE="system_usage.log"
timestamp=$(date "+%Y-%m-%d %H-%M-%S")

cpu_usage=$(top -b -n 1 | awk '/Cpu\(s\)/ {print 100 - $8}') 
mem_usage=$(free | awk '/Mem:/ { printf "%.0f", ($3/$2)*100 }')


echo "$timestamp | CPU: ${cpu_usage}% | Memory: ${mem_usage}%" >> "$LOG_FILE"


#sending alert message if exceeds threshold

if [[ "$cpu_usage" -ge "$CPU_THRESHOLD" ]] ; then
	echo "ALERT: cpu usage ${cpu_usage}%"
fi

if [[ "$mem_usage" -ge "$MEM_THRESHOLD" ]] ; then
	echo "ALERT: memory usage ${mem_usage}%"
fi 
