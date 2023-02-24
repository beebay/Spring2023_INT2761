#!/bin/bash

generate_report () {
Get current date and time

current_date=$(date +%Y-%m-%d)
current_time=$(date +%H:%M:%S)
Get CPU usage percentage

cpu_usage=$(top -bn1 | grep load | awk '{printf "%.2f%%\n", $(NF-2)}')
Get memory usage percentage

memory_usage=$(free | awk 'NR==2{printf "%.2f%%\n", $3*100/$2}')
Get disk usage percentage

disk_usage=$(df -h | awk '$NF=="/"{printf "%s\n", $5}')
Print report header

echo "Report generated on $current_date at $current_time"
Print CPU, memory, and disk usage

echo "CPU usage: $cpu_usage"
echo "Memory usage: $memory_usage"
echo "Disk usage: $disk_usage"
Print report footer

echo "End of report"
}

generate_report
