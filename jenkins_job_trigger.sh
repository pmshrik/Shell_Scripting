#!/bin/bash
JENKINS_URL="http://jenkins.example.com/job/my-job/build"
USER="admin"
TOKEN="your_api_token"

curl -X POST "$JENKINS_URL" --user "$USER:$TOKEN"
