#!/bin/bash

set -e

docker build \
    --build-arg USER_ID=$(id -u) \
    --build-arg GROUP_ID=$(id -g) \
    -t neovim-playground:latest \
    .

docker run \
    --volume ./config:/home/user/.config/nvim \
    --volume .:/home/user/playground \
    --workdir /home/user/ \
    --rm \
    --tty \
    --interactive=true \
    --user $(id -u):$(id -g) \
    neovim-playground:latest
