#!/bin/bash
cp emacs ~/.emacs.tmp
cp -r emacs.d ~/.emacs.d.tmp
cp gitconfig ~/.gitconfig.tmp
mkdir ~/xmonad
cp xmonad.hs ~/xmonad/xmonad.hs
cp xmobarrc ~/.xmobarrc.tmp