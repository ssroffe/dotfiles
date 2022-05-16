#!/bin/bash

##GITHUB REFERENCE: https://github.com/vinceliuice/WhiteSur-gtk-theme
SCRIPT_DIR=$( dirname $0 ) ## Get script directory for relative pathing reasons

## Check if theme directory is made ##
if [ ! -d "${HOME}/.themes" ]; then
    mkdir -p ${HOME}/.themes
fi

themedir="${HOME}/.themes/WhiteSurTheme"
if [ ! -d ${themedir} ]; then
    git clone https://github.com/vinceliuice/Orchis-theme.git ${themedir}
fi

${themedir}/install.sh -t purple

#Change theme in gnome tweaks manually for now
## TODO: Auto change gnome tweak settings?
## TODO: Use dconf load / < file
dconf load / < ${SCRIPT_DIR}/Orchis.conf