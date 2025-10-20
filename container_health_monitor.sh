#!/bin/bash
containers=$(docker ps -q)
for c in $containers; do
  name=$(docker inspect --format '{{.Name}}' $c | sed 's/\///')
  health=$(docker inspect --format '{{.State.Health.Status}}' $c 2>/dev/null)
  echo "Container: $name → Status: ${health:-running}"
done
