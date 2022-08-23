#!/bin/bash

# INSTALL
exec apt install \
  sudo \
  curl \
  neovim \
  firefox-esr \
  fish \
  xserver-xorg xinit \
  libpangocairo-1.0-0 \
  python3-pip python3-xcffib python3-cairocffi \
  htop \  
  -y

exec pip install qtile

exec usermod -aG sudo usr
exec usermod -s $(which fish) usr

link=https://download.jetbrains.com/python/pycharm-community-2022.2.1.exe
wget $link  # is wget avaliable on clear system?
