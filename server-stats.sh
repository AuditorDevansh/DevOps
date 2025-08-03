#!/bin/bash

# server-stats.sh
# A professional system monitoring script for basic server health diagnostics

echo "================= SERVER PERFORMANCE REPORT ================="
echo ""

# OS and Uptime Information
echo ">> Operating System:"
uname -a
echo ""

echo ">> Uptime:"
uptime -p
echo ""

# CPU Usage
echo ">> CPU Usage Summary:"
top -bn1 | grep "Cpu(s)" | awk '{printf "User: %.1f%%, System: %.1f%%, Idle: %.1f%%\n", $2, $4, $8}'
echo ""

# Memory Usage
echo ">> Memory Usage (MB):"
free -m | awk 'NR==2 {printf "Used: %sMB / %sMB (%.2f%% Used)\n", $3, $2, $3*100/$2 }'
echo ""

# Disk Usage
echo ">> Disk Usage on /:"
df -h / | awk 'NR==2 {printf "Used: %s / %s (%s Used)\n", $3, $2, $5}'
echo ""

# Top Processes by CPU
echo ">> Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6 | column -t
echo ""

# Top Processes by Memory
echo ">> Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6 | column -t
echo ""

# Logged-in Users
echo ">> Active User Sessions:"
who
echo ""

# Failed SSH Login Attempts (Debian/Ubuntu)
echo ">> Failed SSH Login Attempts:"
if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log | wc -l
else
    echo "Log file not found or inaccessible. Skipped."
fi

echo ""
echo "================= END OF REPORT ================="
