#!/bin/bash

source $PWD/scripts/set_env.sh

docker build -t $DOCKER_IMG . -f docker/Dockerfile.base
