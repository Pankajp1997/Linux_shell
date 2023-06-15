#!/bin/bash

# Get CPU usage percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Get memory usage percentage
memory_usage=$(free | awk '/Mem/ {print ($3 / $2) * 100}')

# Get disk usage percentage of the root filesystem
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage%"
echo "Disk Usage: $disk_usage%"
