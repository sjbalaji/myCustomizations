((auto-complete+ status "installed" recipe
		 (:name auto-complete+ :auto-generated t :type emacswiki :description "Auto complete plus" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-complete+.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (emacs-goodies-el status "installed" recipe
		   (:name emacs-goodies-el :website "http://packages.debian.org/sid/emacs-goodies-el" :description "Miscellaneous add-ons for Emacs" :type http-tar :url "http://alioth.debian.org/snapshots.php?group_id=30060" :options
			  ("xzf")
			  :build
			  (let*
			      ((pdir
				(el-get-package-directory 'emacs-goodies-el))
			       (pkg-goodies-dir
				(or
				 (car
				  (directory-files pdir 'full "^pkg-goodies-el-"))
				 pdir))
			       (default-directory
				 (file-name-as-directory
				  (expand-file-name "emacs-goodies-el" pkg-goodies-dir))))
			    (el-get-verbose-message "Building commands from %s" default-directory)
			    (el-get-verbose-message "Expecting commands to run in %s" pdir)
			    (append
			     (mapcar
			      (lambda
				(patch-file)
				(list "patch" "-p1" "-f" "--no-backup-if-mismatch" "-i"
				      (expand-file-name patch-file
							(expand-file-name "emacs-goodies-el/debian/patches" pdir))
				      "-d"
				      (expand-file-name "emacs-goodies-el" pdir)))
			      (with-temp-buffer
				(insert-file-contents "debian/patches/series")
				(split-string
				 (buffer-string)
				 "\n" t)))
			     (let
				 ((makerfiles
				   (split-string
				    (shell-command-to-string "find . -name '*.make'"))))
			       (el-get-verbose-message "Makerfiles: %S" makerfiles)
			       (mapcar
				(lambda
				  (makerfile)
				  (let*
				      ((maker-dir
					(expand-file-name
					 (file-name-directory makerfile)
					 (expand-file-name "emacs-goodies-el" pdir)))
				       (maker-command
					(replace-regexp-in-string "\n" ""
								  (replace-regexp-in-string "emacs -batch"
											    (concat el-get-emacs " -batch")
											    (with-temp-buffer
											      (insert-file-contents makerfile)
											      (buffer-string))))))
				    (format "cd %s && %s" maker-dir maker-command)))
				makerfiles))))
			  :load-path
			  ("emacs-goodies-el/elisp/debian-el" "emacs-goodies-el/elisp/devscripts-el" "emacs-goodies-el/elisp/dpkg-dev-el" "emacs-goodies-el/elisp/emacs-goodies-el" "emacs-goodies-el/elisp/vm-bonus-el")
			  :features
			  (emacs-goodies-el debian-el dpkg-dev-el)
			  :post-init
			  (progn
			    (autoload 'debuild "devscripts" "Run debuild in the current directory." t)
			    (autoload 'debc "devscripts" "Run debc in the current directory." t)
			    (autoload 'debi "devscripts" "Run debi in the current directory." t)
			    (autoload 'debit "devscripts" "Run debit in the current directory." t)
			    (autoload 'debdiff "devscripts" "Compare contents of CHANGES-FILE-1 and CHANGES-FILE-2." t)
			    (autoload 'debdiff-current "devscripts" "Compare the contents of .changes file of current version with previous version;\nrequires access to debian/changelog, and being in debian/ dir." t)
			    (autoload 'debclean "devscripts" "Run debclean in the current directory." t)
			    (autoload 'pdebuild "pbuilder-mode" "Run pdebuild in the current directory." t)
			    (autoload 'pdebuild-user-mode-linux "pbuilder-mode" "Run pdebuild-user-mode-linux in the current directory." t)
			    (autoload 'pbuilder-log-view-elserv "pbuilder-log-view-mode" "Run a elserv session with log view.\n\nRunning this requires elserv.  Use elserv, and do `elserv-start' before invoking this command." t)
			    (autoload 'debuild-pbuilder "pbuilder-mode" "Run debuild-pbuilder in the current directory." t)
			    (autoload 'pbuilder-build "pbuilder-mode" "Run pbuilder-build for the given filename." t)
			    (autoload 'pbuilder-user-mode-linux-build "pbuilder-mode" "Run pbuilder-user-mode-linux for the given filename." t)
			    (defgroup vm-bonus-el nil "Customize vm-bonus-el Debian packages." :group 'vm)
			    (defgroup vm-bogofilter nil "VM Spam Filter Options" :group 'vm :group 'vm-bonus-el :load 'vm-bogofilter)
			    (autoload 'vm-bogofilter-setup "vm-bogofilter" "Initialize vm-bogofilter." t)
			    (defcustom vm-bogofilter-setup nil "Whether to initialize vm-bogofilter on startup.\nvm-bogofilter interfaces VM with the bogofilter spam filter." :type 'boolean :set
			      (lambda
				(symbol value)
				(set-default symbol value)
				(when value
				  (vm-bogofilter-setup)))
			      :load 'vm-bogofilter :group 'vm :group 'vm-bogofilter :group 'vm-bonus-el))))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (speedbar-extension status "installed" recipe
		     (:name speedbar-extension :auto-generated t :type emacswiki :description "Some extensions for speedbar" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/speedbar-extension.el")))
