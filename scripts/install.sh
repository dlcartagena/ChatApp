#!/bin/bash
pwd=$( aws ecr get-login-password )
docker container stop $(docker container ls -aq)
docker login -u AWS -p $pwd 922803931776.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8
docker pull 922803931776.dkr.ecr.us-east-1.amazonaws.com/iic2173-proyecto-semestral-grupo-8/ChatApp-backend