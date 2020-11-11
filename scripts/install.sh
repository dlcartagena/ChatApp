#!/bin/bash
docker container stop $(docker container ls -aq)
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $AWS_USER_ID.dkr.ecr.us-east-1.amazonaws.com
docker pull $AWS_ACCESS_KEY_ID.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8
rm /home/ubuntu/app/install.sh