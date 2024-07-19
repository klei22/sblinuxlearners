#!/bin/bash

# install git
echo "installing git"
suod apt install -y git

# install vim
echo "installing vim"
suod apt install -y vim

# install firefox
echo "installing firefox"
wget https://ftp.mozilla.org/pub/firefox/releases/128.0/linux-x86_64/en-US/firefox-128.0.tar.bz2
tar xjf firefox-128.0.tar.bz2
mkdir ~/Apps
mv ./firefox ~/Apps/firefox
sudo ln -s ~/Apps/firefox/firefox /usr/bin/firefox

# install python dependencies
echo "installing python"
sudo apt update
sudo apt install -y python3-virtualenv
sudo apt install -y python3-pip
