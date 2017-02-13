#!/bin/bash
 # max memory it can use
 xhost + local:docker




    #--net host \
    #--cap-add=CAP_SYS_ADMIN \
docker run -it --rm \
    --cpuset-cpus 0 \
    --memory 512mb \
    --cap-add=SYS_ADMIN \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -v $HOME/Downloads:/home/chrome/Downloads \
    -v $(pwd)/data:/data \
    -v $(pwd)/apps:/apps:rw \
    --device /dev/snd \
    -v /var/run/dbus:/var/run/dbus \
    --name chrome \
    arc

 xhost - local:docker
