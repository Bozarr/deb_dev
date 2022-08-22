#!/bin/bash

# INSTALL
exec apt install \
  neovim \
  firefox-esr \
  fish \
  xserver-xorg xinit \
  libpangocairo-1.0-0 \
  python3-pip python3-xcffib python3-cairocffi \
  htop \
  
  -y

exec pip install qtile
exec usermod -s $(which fish) username
