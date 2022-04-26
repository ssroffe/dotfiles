#!/bin/bash

##GITHUB REFERENCE: https://github.com/vinceliuice/WhiteSur-gtk-theme

## Check if theme directory is made ##
if [ ! -d "${HOME}/.themes" ]; then
    mkdir -p ${HOME}/.themes
fi

themedir="${HOME}/.themes/WhiteSurTheme"
if [ ! -d ${themedir} ]; then
    git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ${themedir}
fi

${themedir}/install.sh

#Change theme in gnome tweaks manually for now
## TODO: Auto change gnome tweak settings?
## TODO: Check out https://github.com/vinceliuice/Orchis-theme
