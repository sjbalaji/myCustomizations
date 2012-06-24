#!/bin/bash
echo Configuring emcas
cp emacs ~/.emacs
cp -r emacs.d ~/.emacs.d
echo Configuring screen
cp screenrc ~/.screenrc
echo Configuring git
cp gitconfig ~/.gitconfig
echo Configuring xmonad
mkdir ~/.xmonad
cp xmonad.hs ~/.xmonad/xmonad.hs
echo Configuring xmobar
cp xmobarrc ~/.xmobarrc