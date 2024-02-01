#!/usr/bin/env bash

export DOCKER_IMG=neural_supersampling:dev
export DOCKER_DIR=/workspace/neural-supersampling
export BLENDER_PATH=/usr/bin/blender
export DATA_PATH=$DOCKER_DIR/data
export TENSORBOARD_PATH=$DOCKER_DIR/output/tensorboard
export CHECKPOINT_PATH=$DOCKER_DIR/output/checkpoint
export VIDEO_OUTPUT=$DOCKER_DIR/output/visualization.mp4