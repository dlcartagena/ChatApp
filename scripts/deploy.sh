#!/bin/bash
docker --version
eval $(aws ecr get-login --region us-east-1 --no-include-email)
docker build -t $AWS_ECR_API:latest
docker tag $AWS_ECR_API:latest
docker push $AWS_ECR_API:latest
docker images