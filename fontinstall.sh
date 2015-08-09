#!/bin/sh
# Usage:
#  ./fontinstall foo/*.ttf

set -e

if [ -d "$HOME/Library" ]; then
    # Poor man's OS detection -- this is Mac.
    mkdir -p ~/Library/Fonts
    cp "$@" ~/Library/Fonts
else
    mkdir -p ~/.fonts
    cp "$@" ~/.fonts
    fc-cache -vf ~/.fonts
fi
