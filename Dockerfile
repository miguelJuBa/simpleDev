FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install tmux vim git locales && \
    sed -i '/es_ES.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen && \
    mkdir -p /root/.vim/pack/vendor/start && \
    git clone --depth 1 https://github.com/preservim/nerdtree.git /root/.vim/pack/vendor/start/nerdtree && \
    rm -rf /var/lib/apt/lists/*

# Copy .vimrc to user
COPY config/.vimrc /root

# Set language here using. https://stackoverflow.com/a/28406007
ENV LANG es_ES.UTF-8
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8

WORKDIR /opt
