#!/bin/bash

which pacman > /dev/null 2>&1
if [ $? -eq 0 ]; then
    sudo pacman -Syyu
    sudo pacman -S ranger rofi neovim cmake nodejs
else
    sudo apt update
    sudo apt install ranger rofi nvim cmake
fi
