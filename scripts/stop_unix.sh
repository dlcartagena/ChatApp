#!/bin/bash

docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.travis.yml down

docker stop $(docker ps -a -q)
