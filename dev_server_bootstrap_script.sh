#!/bin/bash
# Installs Docker, Jenkins, Git, and starts services
sudo apt update && sudo apt install -y docker.io git openjdk-17-jre
sudo systemctl enable --now docker

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update && sudo apt install -y jenkins
sudo systemctl enable --now jenkins

echo "✅ DevOps stack installed and running!"
