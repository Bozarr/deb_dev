#!/bin/bash

# INSTALL
exec apt install \
  sudo \
  curl \
  neovim \
  firefox-esr \
  fish \
  xserver-xorg x11-xserver-utils xinit \
  libpangocairo-1.0-0 \
  # remove this and install python from source?
  python3-pip python3-xcffib python3-cairocffi \
  htop \  
  -y

exec pip install qtile

# configure user
exec usermod -aG sudo usr
exec usermod -s $(which fish) usr

# install pycharm
# see https://www.jetbrains.com/help/pycharm/installation-guide.html#33d56af2 for more info
link=https://download.jetbrains.com/python/pycharm-community-2022.2.1.exe
# tar xzf pycharm-*.tar.gz -C <new_archive_folder> --- with output option
wget $link # is wget avaliable on clear system?
# tar xzf pycharm-*.tar.gz -C <new_folder> --- with output option
tar xzf pycharm-*.tar.gz
rm pycharm-community-2022.2.1

# bind pycharm execution to qtile config Key([mod], "p", lazy.spawn("pycharm_directory/bin/pycharm.sh"))
# bind firefox execution to qtile config Key([mod], "f", lazy.spawn(firefox))
