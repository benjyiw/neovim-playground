#!/bin/bash

docker build . -t neovim-playground:latest
docker run -ti neovim-playground:latest

# TODO add some mounts to the local directory so that i can test out neovim
# properly and use it to edit the config
