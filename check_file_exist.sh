#!/bin/bash
FILE="/etc/passwd"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE not found."
fi
