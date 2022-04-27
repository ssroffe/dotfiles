#!/bin/bash

SCRIPT_DIR=$( dirname "$0" )
dconf load / < ${SCRIPT_DIR}/pop_keybindings.conf