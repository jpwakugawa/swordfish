#!/bin/sh

docker stop $(docker ps -q)
yes | docker container prune
yes | docker network prune
