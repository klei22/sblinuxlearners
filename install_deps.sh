#!/bin/bash

# install firefox
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt update
sudo apt install -y firefox

# install python dependencies
sudo apt install -y python3-virtualenv
sudo apt install -y python3-pip
