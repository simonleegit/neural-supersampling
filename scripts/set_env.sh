#!/usr/bin/env bash

export DOCKER_IMG=neural_supersampling:dev
export DOCKER_PATH=/workspace/neural-supersampling
export BLENDER_PATH=/usr/bin/blender
export DATA_PATH=$DOCKER_PATH/data
export TENSORBOARD_PATH=$DOCKER_PATH/output/tensorboard
export CHECKPOINT_PATH=$DOCKER_PATH/output/checkpoint
export VIDEO_OUTPUT=$DOCKER_PATH/output/visualization.mp4