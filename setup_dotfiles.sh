#!/bin/bash

CONFIG=${HOME}/.config/
cd home
cp .aliases ${HOME}/
cp .vimrc ${HOME}/
cp .tmux.conf ${HOME}/
cp .zshrc ${HOME}/
cp .Xmodmap ${HOME}/

cd ..
cp -r .config/rofi ${CONFIG}
cp -r .config/nvim ${CONFIG}
