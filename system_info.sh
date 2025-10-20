#!/bin/bash
echo "Hostname: $(hostname)"
echo "OS Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
echo "Uptime: $(uptime -p)"
