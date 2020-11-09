#!/bin/bash
docker-compose -f /home/ubuntu/app/docker-compose.yml down
docker stop $(docker ps -a -q)