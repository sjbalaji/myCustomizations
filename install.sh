#!/bin/bash
echo Configuring emcas
cp emacs ~/.emacs
echo Configuring screen
cp screenrc ~/.screenrc
cp -r emacs.d ~/.emacs.d
cp gitconfig ~/.gitconfig
mkdir ~/.xmonad
cp xmonad.hs ~/.xmonad/xmonad.hs
cp xmobarrc ~/.xmobarrc