#!/bin/bash

SCRIPT_DIR=$(dirname $0)
## get fonts
wget -P ${HOME}/.local/share/fonts/https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P ${HOME}/.local/share/fonts/https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P ${HOME}/.local/share/fonts/https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -P ${HOME}/.local/share/fonts/https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

## Download powerlevel
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## sed the theme
sed -i 's/ZSH_THEME.*/ZSH_THEME=\"powerlevel10k/powerlevel10k\"' ${HOME}/.zshrc

##TODO: Auto transfer configurations. Don't know how it works with instant-prompt