#!/bin/bash
RUNNER_STATUS=$(gitlab-runner verify --delete | grep "is alive" | wc -l)
if [ $RUNNER_STATUS -eq 0 ]; then
  echo "Runner not responding! Restarting..."
  systemctl restart gitlab-runner
else
  echo "GitLab runner is healthy."
fi
