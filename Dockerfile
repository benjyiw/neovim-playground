FROM ubuntu:24.04

# build with the following arguments:
#
#   --build-arg USER_ID=$(id -u)
#   --build-arg GROUP_ID=$(id -g)
#
ARG USER_ID=1001
ARG GROUP_ID=1001
ARG BASHRC=/home/user/.bashrc

# install some dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim \
    tmux \
    build-essential \
    sudo

# setup a user with a matching user id to prevent weird permission issues.
RUN addgroup --gid ${GROUP_ID} usergroup && \
    adduser --disabled-password --gecos "" --uid ${USER_ID} --gid ${GROUP_ID} user

# install neovim
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && \
    rm -rf /opt/nvim && \
    tar -C /opt -xzf nvim-linux64.tar.gz

RUN echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ${BASHRC} && \
    echo 'alias vim="nvim"' >> ${BASHRC} && \
    echo 'alias vi="nvim"' >> ${BASHRC} && \
    echo 'alias nv="nvim"' >> ${BASHRC}

