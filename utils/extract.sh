#!/bin/sh
7z e $1 sources/install.wim
mkdir tmp fonts
imagex mount install.wim 1 tmp
cp tmp/Windows/Fonts/{*.ttf,*.ttc} fonts
imagex unmount tmp
rm -r tmp