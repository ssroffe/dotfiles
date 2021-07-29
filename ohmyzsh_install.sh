#!/bin/bash

which pacman > /dev/null 2>&1
if [ $? -eq 0 ]; then
    sudo pacman -S curl zsh git
else
    sudo apt install -y curl zsh git
fi

## Oh-My-Zsh Install ##
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Theme ##
cp .oh-my-zsh/roffe.zsh-theme ${HOME}/.oh-my-zsh/themes/

## Plugins ##
# Syntax highlighting 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
