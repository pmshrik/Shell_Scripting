#!/bin/bash
echo "Cleaning up unused Docker images and containers..."
docker container prune -f
docker image prune -f
docker volume prune -f
