#!/bin/bash

# clean excess files
echo "remove libreoffice for space"
sudo apt remove -y --purge libreoffice*
sudo apt-get autoremove
sudo apt-get clean

sudo rm -rf /etc/libreoffice
sudo rm -rf /usr/lib/libreoffice
sudo rm -rf /usr/share/libreoffice
sudo rm -rf /usr/share/applications/libreoffice-*
sudo rm -rf /usr/bin/libreoffice

# install git
echo "installing git"
sudo apt install -y git

# install vim
echo "installing vim"
sudo apt install -y vim

# install firefox
if [[ ! -d "$HOME/Apps/firefox" ]]; then
  echo "installing firefox"
  wget https://ftp.mozilla.org/pub/firefox/releases/128.0/linux-x86_64/en-US/firefox-128.0.tar.bz2
  tar xjf firefox-128.0.tar.bz2
  mkdir ~/Apps
  mv ./firefox ~/Apps/firefox
  sudo ln -s ~/Apps/firefox/firefox /usr/bin/firefox
fi

# install python dependencies
echo "installing python"
sudo apt update
sudo apt install -y python3-venv
sudo apt install -y python3-pip
