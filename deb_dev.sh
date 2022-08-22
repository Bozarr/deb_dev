#!/bin/bash

# git
exec apt install git -y

# nvim
exec apt install neovim -y

# firefox
exec apt install firefox-esr -y

# fish shell
exec apt install fish -y
usermod -s $(which fish) username
