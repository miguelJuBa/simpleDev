FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install tmux vim locales && \
    sed -i '/es_ES.UTF-8/s/^# //g' /etc/locale.gen && \ # Patch locale file like: https://stackoverflow.com/a/28406007
    locale-gen && \
    rm -rf /var/lib/apt/lists/*

# Set language here using. https://stackoverflow.com/a/28406007
ENV LANG es_ES.UTF-8
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8

WORKDIR /opt
