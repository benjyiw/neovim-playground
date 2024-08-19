FROM ubuntu:24.04

# install some dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim

# install neovim
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && \
    rm -rf /opt/nvim && \
    tar -C /opt -xzf nvim-linux64.tar.gz


RUN echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc

