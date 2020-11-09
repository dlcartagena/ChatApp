#!/bin/bash
echo $(pwd)
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.production.yml up -d