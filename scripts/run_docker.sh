#!/usr/bin/env bash

source $PWD/scripts/set_env.sh

ID=$(docker run \
    --rm \
    --gpus all \
    -itd \
    --ipc=host \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    -p 8888:8888 \
    -p 6006:6006 \
	-e XAUTHORITY=$XAUTH \
    -e BLENDER_PATH=$BLENDER_PATH \
    -e DATA_PATH=$DATA_PATH \
    -e TENSORBOARD_PATH=$TENSORBOARD_PATH \
    -e CHECKPOINT_PATH=$CHECKPOINT_PATH \
    -e VIDEO_OUTPUT=$VIDEO_OUTPUT \
    -v $PWD:$DOCKER_DIR \
    -w $DOCKER_DIR \
    $DOCKER_IMG)

docker exec -it ${ID} bash
