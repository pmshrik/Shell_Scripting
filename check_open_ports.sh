#!/bin/bash
echo "Open ports on $(hostname):"
sudo netstat -tuln | grep LISTEN
