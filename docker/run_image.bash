IMAGE=improbableailab/ur5e-ros:noetic
wandb docker-run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="$PWD/../../:/workspace/" \
    --privileged \
    --runtime=nvidia \
    --net=host \
    ${IMAGE}

