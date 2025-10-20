#!/bin/bash
REPORT="/tmp/server_health.txt"
{
  echo "Hostname: $(hostname)"
  echo "Uptime: $(uptime -p)"
  echo "CPU Load: $(uptime | awk -F'load average:' '{print $2}')"
  echo "Memory Usage:"
  free -h
  echo "Disk Usage:"
  df -h | grep '^/dev/'
  echo "Top Processes:"
  ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -10
} > $REPORT
cat $REPORT
