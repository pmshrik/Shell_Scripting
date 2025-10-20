#!/bin/bash
REPO_DIR="/opt/myapp"
cd $REPO_DIR || exit
git fetch origin main
if [[ $(git rev-parse HEAD) != $(git rev-parse origin/main) ]]; then
  echo "Pulling new changes..."
  git pull origin main
  systemctl restart myapp
else
  echo "No changes detected."
fi
