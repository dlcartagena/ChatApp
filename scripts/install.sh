#!/bin/bash
pwd=$( aws ecr get-login-password )

docker container stop $(docker container ls -aq)
docker login -u AWS --password-stdin $pwd $AWS_ACCESS_KEY_ID.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8
docker pull $AWS_ACCESS_KEY_ID.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8