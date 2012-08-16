#!/bin/sh
7z e Windows8-ReleasePreview-32bit-English.iso sources/install.wim
mkdir tmp fonts
imagex mount install.wim 1 tmp
cp tmp/Windows/Fonts/*.ttf fonts
cp tmp/Windows/System32/license.rtf fonts
imagex unmount tmp
rm -R tmp install.wim