screen:
	echo Configuring screen
	cp screenrc ~/.screenrc
git:
	echo Configuring git
	cp gitconfig ~/.gitconfig
xmonad:
	echo Configuring xmonad
	rm -rf ~/.xmonad
	mkdir ~/.xmonad
	cp xmonad.hs ~/.xmonad/xmonad.hs
xmobar:
	echo Configuring xmobar
	cp -r  xmobarrc ~/.xmobarrc
emacs:
	echo Configuring emcas
	rm -rf ~/.emacs*
	cp emacs ~/.emacs
	cp -r emacs.d ~/.emacs.d
compileEmacs:
	echo compiling emms 
	cd ~/.emacs.d/emms-3.0/;
	make;
all:
	screen git xmonad xmobar emacs compileEmacs
