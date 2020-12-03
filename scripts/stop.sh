#!/bin/bash
docker-compose -f /home/ubuntu/app/docker-compose.travis.yml down
sudo docker stop $(docker ps -a -q)
