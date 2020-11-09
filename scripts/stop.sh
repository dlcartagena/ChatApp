#!/bin/bash
docker-compose -f ../docker-compose.yml down
docker stop $(docker ps -a -q)