#!/bin/bash
pwd=$(aws ecr get-login-password --region us-east-1)
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.production.yml up -d