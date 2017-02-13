#!/bin/bash
 # max memory it can use
 xhost + local:docker




    #--net host \
    #--cap-add=CAP_SYS_ADMIN \
    ##--cap-add=SYS_ADMIN \
docker run -it --rm \
    --cpuset-cpus 0 \
    --memory 512mb \
    --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -v $HOME/Downloads:/home/chrome/Downloads \
    -v $(pwd)/data:/data \
    -v $(pwd)/apps:/apps:rw \
    --device /dev/snd \
    -v /var/run/dbus:/var/run/dbus \
    --name arcwelder \
    arc-welder:latest

 xhost - local:docker
