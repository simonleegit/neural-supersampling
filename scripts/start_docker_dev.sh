#!/usr/bin/env bash

ID=$(docker run \
    --rm \
    --gpus all \
    -itd \
    -p 8888:8888 \
	-e XAUTHORITY=$XAUTH \
    -v $PWD:/workspace/neural-supersampling \
    -w /workspace/neural-supersampling \
    "simon/neural_supersampling:dev")

docker exec -it ${ID} bash
