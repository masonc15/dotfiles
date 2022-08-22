#!/usr/bin/env bash

##
# Script to install applications for Ubuntu WSL
##

# Run this as sudo!
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

apt-get update

package_path="/home/colin/.local/share/chezmoi/apt/packages.txt"

for package in $(cat $package_path); do
    apt-get install -y $package
done

# # Install PHP, but I don't need a web server.
# apt-get install --no-install-recommends php

# # Install Applications with apt-get
# # Note for docker:
# # https://stackoverflow.com/questions/45023363/what-is-docker-io-in-relation-to-docker-ce-and-docker-ee/57678382#57678382
# apt-get install \
#     audacity \
#     borgbackup \
#     build-essential \
#     curl \
#     default-jdk \
#     docker.io \
#     docker-compose \
#     filezilla \
#     ffmpeg \
#     gimp \
#     gimp-plugin-registry \
#     git \
#     gitk \
#     htop \
#     imagemagick \
#     jq \
#     libreadline-dev \
#     libssl-dev \
#     markdown \
#     meld \
#     php-bcmath \
#     php-curl \
#     php-mbstring \
#     php-xml \
#     php-zip \
#     python3 \
#     python3-pip \
#     ruby \
#     ruby-dev \
#     silversearcher-ag \
#     texlive \
#     texlive-fonts-extra \
#     transmission \
#     ttf-mscorefonts-installer \
#     vim-gtk3 \
#     vlc \
#     zlib1g-dev \
#     zsh
