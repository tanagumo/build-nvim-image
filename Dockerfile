FROM ubuntu:22.04

ARG NVIM_INSTALL_PREFIX=/usr/local
ARG NVIM_VERSION=
RUN bash -c "mkdir -p ${NVIM_INSTALL_PREFIX}"
RUN if [ ! -z "${NVIM_VERSION}" ]; then \
        exit 0; \
    else \
        exit 1; \
    fi

WORKDIR /tmp
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y build-essential cmake git zip lua5.1 luarocks gettext
RUN git clone https://github.com/neovim/neovim.git

WORKDIR /tmp/neovim
RUN git reset --hard ${NVIM_VERSION}
RUN make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=${NVIM_INSTALL_PREFIX}
RUN make install
