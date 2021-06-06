FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install tmux vim && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt
