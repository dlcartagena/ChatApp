#!/bin/bash
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.yml build
docker-compose up -d
docker-compose -f /home/travis/build/dlcartagena/ChatApp/docker-compose.yml exec app npm test
docker-compose down