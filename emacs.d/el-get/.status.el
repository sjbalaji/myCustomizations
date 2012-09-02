((ansi status "installed" recipe
       (:name ansi :website "https://github.com/rejeep/ansi" :description "This package defines functions that turns simple strings to ansi strings. Turning a string into an ansi string can be to add color to a text, add color in the background of a text or adding a style, such as bold, underscore or italic." :type http :url "https://github.com/rejeep/ansi/raw/master/ansi.el"))
 (ansi-color status "removed" recipe nil)
 (auto-complete status "installed" recipe
		(:name auto-complete :website "http://cx4a.org/software/auto-complete/" :description "The most intelligent auto-completion extension." :type github :pkgname "m2ym/auto-complete" :depends
		       (popup fuzzy)))
 (auto-complete-etags status "installed" recipe
		      (:name auto-complete-etags :type emacswiki :description "Auto-complete sources for etags" :depends auto-complete))
 (auto-install status "installed" recipe
	       (:name auto-install :description "Auto install elisp file" :type emacswiki))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/m2ym/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "m2ym/fuzzy-el"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/m2ym/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "m2ym/popup-el"))
 (shell-switcher status "installed" recipe
		 (:name shell-switcher :type github :pkgname "DamienCassou/shell-switcher" :description "An emacs mode to easily switch between shell buffers (like with alt+tab)"))
 (theme-roller status "removed" recipe nil))
