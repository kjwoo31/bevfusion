#!/bin/bash

docker run \
-it --rm --ipc=host \
--ulimit memlock=-1 --ulimit stack=67108864 \
--gpus all \
--shm-size=16g \
-v /mnt/OT_DATASET/:/mnt/OT_DATASET/ \
bevfusion
