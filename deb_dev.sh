#!/bin/bash
# preparations
apt update
apt upgrade

# INSTALL
# python dependencies
apt install -y \
  sudo \
  make \
  wget \
  curl \
  neovim \
  firefox-esr \
  fish \
  xserver-xorg x11-xserver-utils xinit \
  htop \
  tmux \
  python3-pip \
  libpangocairo-1.0-0 python3-cairocffi # for qtile python3-xcffib 

echo Finished tools installation

# python
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz
tar xzf Python-*.tgz
rm Python-*.tgz

echo Finished python installation

# exec pip install qtile

# configure user
exec usermod -aG sudo ur
exec usermod -s $(which fish) ur

# install pycharm
# see https://www.jetbrains.com/help/pycharm/installation-guide.html#33d56af2 for more info
link=https://download.jetbrains.com/python/pycharm-community-2022.2.1.exe
# tar xzf pycharm-*.tar.gz -C <new_archive_folder> --- with output option
wget $link
# tar xzf pycharm-*.tar.gz -C <new_folder> --- with output option
tar xzf pycharm-*.tar.gz
rm pycharm-community-2022.2.1

# bind pycharm execution to qtile config Key([mod], "p", lazy.spawn("pycharm_directory/bin/pycharm.sh"))
# bind firefox execution to qtile config Key([mod], "f", lazy.spawn(firefox))
