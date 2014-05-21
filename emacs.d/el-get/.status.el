((auto-complete+ status "installed" recipe
		 (:name auto-complete+ :auto-generated t :type emacswiki :description "Auto complete plus" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-complete+.el"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-maker status "installed" recipe
		    (:name color-theme-maker :auto-generated t :type emacswiki :description "install color themes" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/color-theme-maker.el"))
 (color-theme-solarized status "installed" recipe
			(:name color-theme-solarized :description "Emacs highlighting using Ethan Schoonover's Solarized color scheme" :type github :pkgname "sellout/emacs-color-theme-solarized" :depends color-theme :prepare
			       (progn
				 (add-to-list 'custom-theme-load-path default-directory)
				 (autoload 'color-theme-solarized-light "color-theme-solarized" "color-theme: solarized-light" t)
				 (autoload 'color-theme-solarized-dark "color-theme-solarized" "color-theme: solarized-dark" t))))
 (cscope status "installed" recipe
	 (:name cscope :auto-generated t :type emacswiki :description "Interface to cscope browser" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cscope.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp" :website "https://github.com/kiwanami/emacs-deferred" :type github :pkgname "kiwanami/emacs-deferred" :features "deferred"))
 (e2wm status "installed" recipe
       (:name e2wm :description "simple window manager for emacs" :website "https://github.com/kiwanami/emacs-window-manager" :type github :pkgname "kiwanami/emacs-window-manager" :depends window-layout :features "e2wm"))
 (eassist status "installed" recipe
	  (:name eassist :auto-generated t :type emacswiki :description "EmacsAssist, C/C++/Java/Python/ELisp method/function navigator." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/eassist.el"))
 (ediff+ status "installed" recipe
	 (:name ediff+ :auto-generated t :type emacswiki :description "Enhancements to Ediff" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ediff+.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (emacs-w3m status "installed" recipe
	    (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :website "http://emacs-w3m.namazu.org/" :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
		   `("autoconf"
		     ("./configure" ,(concat "--with-emacs=" el-get-emacs))
		     "make")
		   :build/windows-nt
		   ("sh /usr/bin/autoconf" "sh ./configure" "make")
		   :info "doc"))
 (erc status "required" recipe nil)
 (ewb status "installed" recipe
      (:name ewb :auto-generated t :type emacswiki :description "Emacs Web Browser" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ewb.el"))
 (ghc-mod status "installed" recipe
	  (:name ghc-mod :description "Happy Haskell programming" :type github :pkgname "kazu-yamamoto/ghc-mod" :load-path "elisp"))
 (git-emacs status "installed" recipe
	    (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (git-modes status "installed" recipe
	    (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (gnuplot-mode status "installed" recipe
	       (:name gnuplot-mode :description "Drive gnuplot from within emacs" :type github :pkgname "bruceravel/gnuplot-mode" :build
		      `(("./configure")
			("make" ,(concat "EMACS=" el-get-emacs)
			 "gnuplot.elc" "gnuplot-gui.elc"))
		      :info "gnuplot.info"))
 (gnus status "installed" recipe
       (:name gnus :description "A newsreader for GNU Emacs" :type git :url "http://git.gnus.org/gnus.git" :build
	      `(("./configure" ,(concat "--with-emacs="
					(shell-quote-argument el-get-emacs)))
		("make"))
	      :build/windows-nt
	      `(,(concat "\"make.bat " invocation-directory "\""))
	      :info "texi" :load-path
	      ("lisp")
	      :autoloads nil :features gnus-load))
 (haskell-mode status "installed" recipe
	       (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :info "." :build
		      `(("make" ,(format "EMACS=%s" el-get-emacs)
			 "all"))
		      :post-init
		      (progn
			(require 'haskell-mode-autoloads)
			(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
			(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (irc status "installed" recipe
      (:name irc :auto-generated t :type emacswiki :description "A user interface for the Internet Relay Chat" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/irc.el"))
 (mew status "installed" recipe
      (:name mew :description "Mew is a mail reader for Emacs" :type git :url "https://github.com/kazu-yamamoto/Mew.git" :prepare
	     (progn
	       (setq mew-prog-mewl
		     (concat default-directory "bin/mewl"))
	       (setq mew-prog-mime-encode
		     (concat default-directory "bin/mewencode"))
	       (setq mew-prog-mime-decode
		     (concat default-directory "bin/mewencode"))
	       (setq mew-prog-cmew
		     (concat default-directory "bin/cmew"))
	       (setq mew-prog-est-update
		     (concat default-directory "bin/mewest"))
	       (setq mew-prog-smew
		     (concat default-directory "bin/smew"))
	       (setq mew-mbox-command
		     (concat default-directory "bin/incm")))
	     :build
	     `(("./configure" ,(concat "--with-emacs=" el-get-emacs))
	       "make")))
 (pcache status "installed" recipe
	 (:name pcache :type github :pkgname "sigma/pcache" :description "persistent caching for Emacs" :website "http://github.com/sigma/pcache"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (speedbar-extension status "installed" recipe
		     (:name speedbar-extension :auto-generated t :type emacswiki :description "Some extensions for speedbar" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/speedbar-extension.el"))
 (tabulated-list status "installed" recipe
		 (:name tabulated-list :type github :pkgname "sigma/tabulated-list.el" :description "generic major mode for tabulated lists." :website "http://github.com/sigma/tabulated-list.el"))
 (window-layout status "installed" recipe
		(:name window-layout :description "window layout manager" :website "https://github.com/kiwanami/emacs-window-layout" :type github :pkgname "kiwanami/emacs-window-layout" :features "window-layout")))
