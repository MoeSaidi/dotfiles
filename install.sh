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


