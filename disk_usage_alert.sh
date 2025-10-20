#!/bin/bash
THRESHOLD=80
df -h | grep '^/dev/' | while read line; do
  usage=$(echo $line | awk '{print $5}' | sed 's/%//')
  partition=$(echo $line | awk '{print $1}')
  if [ $usage -ge $THRESHOLD ]; then
    echo "⚠️ WARNING: $partition at ${usage}% usage!"
  fi
done
