#!/bin/bash
docker-compose -f /home/ubuntu/app/ChatApp/docker-compose.travis.yml down
docker stop $(docker ps -a -q)