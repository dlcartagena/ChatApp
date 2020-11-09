#!/bin/bash
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.production.yml down
docker stop $(docker ps -a -q)