#!/bin/bash
pwd=$(aws ecr get-login-password --region us-east-1)
docker container stop $(docker container ls -aq)
docker login -u AWS --password-stdin $pwd $AWS_ACCESS_KEY_ID.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.production.yml up -d