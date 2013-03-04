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
	echo compiling evil
	cd ~/.emacs.d/evil/;
	make;
vimstuff:
	cp vimrc ~/.vimrc
	cp -r vim ~/.vim
all:
	screen git xmonad xmobar emacs compileEmacs vimstuff
