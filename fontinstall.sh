#!/bin/bash
# Usage:
#  ./fontinstall foo/*.ttf
if [ -d "~/Library" ]; then
    # Poor man's OS detection -- this is Mac.
    mkdir ~/Library/Fonts
    cp $@ ~/Library/Fonts
else
    mkdir ~/.fonts
    cp $@ ~/.fonts
    fc-cache -vf ~/.fonts
fi
