#!/bin/bash
 # max memory it can use
 xhost + local:docker

docker run -it --rm\
        --net host \
        --cpuset-cpus 0 \
        --memory 512mb \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=unix$DISPLAY \
        -v $HOME/Downloads:/root/Downloads \
        --device /dev/snd \
        --entrypoint /bin/bash \
        --name chrome \
        jess/chrome:latest

 xhost - local:docker
