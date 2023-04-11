#!/usr/bin/env sh

######################################################################
# @author      : karl (karlsasssie@gmail.com)
# @file        : profile
# @created     : Tuesday Apr 11, 2023 22:03:00 CEST
#
# @description : 
######################################################################
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/sbin/firefox
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"



# Added by Toolbox App
export PATH="$PATH:/home/karl/.local/share/JetBrains/Toolbox/scripts"
. "$HOME/.cargo/env"



