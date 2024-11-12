#!/bin/bash

docker build . -t neovim-playground:latest
docker run \
    --volume ./config:/root/.config/nvim \
    --volume .:/root/playground \
    --workdir /root/playground \
    --tty --interactive=true \
    neovim-playground:latest

