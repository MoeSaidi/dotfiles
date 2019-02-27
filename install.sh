#/usr/bin/env bah

###
###
###
###
#
#
#


### Global Variables
VERSION=0.1a
COMMAND=$(basename "$0")
VERBOSE=""
DEBUG=""
SIMULATION=""
OFFLINE=""
MODE=""
FORCE=""

### DISPLAY COLOURS
COLOR_GREEN="\033[0;32m"
COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_VIOLET="\033[0;35m"
COLOR_BACK="\033[0m"

### LOCAL VARIABLES
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GIT_URL="https://github.com/moesaidi/dotfiles.git"
GIT_BRANCH="master"

echo "Copying $SCRIPTDIR/VIMRC to ~/.vimrc"
echo
ln -sf $SCRIPTDIR/vimrc ~/.vimrc
echo "Copying $SCRIPTDIR/BASH_PROFILE to ~/.bash_profile"
echo
ln -sf $SCRIPTDIR/bash_profile ~/.bash_profile
echo "Copying $SCRIPTDIR/tmux.conf to ~/.tmux.conf"
echo
ln -sf $SCRIPTDIR/tmux.conf ~/.tmux.conf
echo "Copying $SCRIPTDIR/terminalrc to ~/.config/Terminal/terminalrc"
if [ -d ~/.config/Terminal/ ]; then
    ln -sf $SCRIPTDIR/terminalrc ~/.config/Terminal/terminalrc
else
    echo "Could not find ~/.config/Terminal ... Creating it"
    mkdir -p "~/.config/Terminal"
    echo "Trying to copy again..."
    ln -sf $SCRIPTDIR/terminalrc ~/.config/Terminal/terminalrc
fi

