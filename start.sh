#!/bin/bash

set -ex

USER_ID=$(id -u)
GROUP_ID=$(id -g)

USER_NAME="user"
if [[ "$USER_ID" == "1000" ]]; then
    USER_NAME="ubuntu"
fi

USER_HOME="/home/${USER_NAME}"
NEOVIM_CONFIG_PATH="${USER_HOME}/.config/nvim"
PLAYGROUND_PATH="${USER_HOME}/playground"
BASHRC_PATH="${USER_HOME}/.bashrc"

docker build \
    --build-arg USER_ID="${USER_ID}" \
    --build-arg GROUP_ID="${GROUP_ID}" \
    --build-arg BASHRC="${BASHRC_PATH}" \
    -t neovim-playground:latest \
    .

docker run \
    --workdir "${USER_HOME}" \
    --volume "./config:${NEOVIM_CONFIG_PATH}" \
    --volume ".:${PLAYGROUND_PATH}" \
    --rm \
    --tty \
    --interactive=true \
    --user "${USER_ID}:${GROUP_ID}" \
    neovim-playground:latest
