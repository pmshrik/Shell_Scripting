#!/bin/bash
LOG_DIR="/var/log/myapp"
find $LOG_DIR -name "*.log" -type f -mtime +7 -exec gzip {} \;
find $LOG_DIR -name "*.gz" -mtime +30 -exec rm -f {} \;
echo "Old logs archived and cleaned."
