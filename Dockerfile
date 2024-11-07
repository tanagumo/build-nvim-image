FROM ubuntu:22.04

WORKDIR /tmp
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y build-essential cmake git zip lua5.1 luarocks gettext
RUN git clone https://github.com/neovim/neovim.git

WORKDIR /tmp/neovim
RUN git reset --hard v0.10.2
RUN make CMAKE_BUILD_TYPE=RelWithDebInfo
RUN make install
