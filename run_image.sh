xhost +local:root
docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v $HOME/mediapipe:/mediapipe \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --device=/dev/video0:/dev/video0 \
    mediapipe
xhost -local:root
