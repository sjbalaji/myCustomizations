#!/bin/bash
cp emacs ~/.emacs.tmp
cp -r emacs.d ~/.emacs.d
cp gitconfig ~/.gitconfig
mkdir ~/.xmonad
cp xmonad.hs ~/.xmonad/xmonad.hs
cp xmobarrc ~/.xmobarrc