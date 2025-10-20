#!/bin/bash
PROJECT_DIR="/opt/app"
BUILD_LOG="/var/log/build.log"

echo "Starting build at $(date)" >> $BUILD_LOG
cd $PROJECT_DIR || exit
git pull origin main
mvn clean package -DskipTests

if [ $? -eq 0 ]; then
  echo "Build success, deploying..." >> $BUILD_LOG
  cp target/*.jar /opt/deploy/
  systemctl restart app.service
else
  echo "Build failed!" >> $BUILD_LOG
fi
