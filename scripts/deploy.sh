#!/bin/bash

docker --version
pip install --user aws-cli
export PATH=$PATH:$HOME/.local/bin
eval $(aws ecr get-login --region sa-east-1 --no-include-email)
docker build -t $AWS_ECR_API:latest
docker tag $AWS_ECR_API:latest
docker push $AWS_ECR_API:latest
docker images