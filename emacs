(add-hook 'load-path "~/.emacs.d/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; displays the time in the status bar
(display-time)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; bink cursor mode
(blink-cursor-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; split the window vertically whern two or more files are opened
;;(setq split-width-threshold 40)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil mode :p
;; (add-to-list 'load-path "~/.emacs.d/evil")
;; (require 'evil)
;; (evil-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Doxygen :p
 (add-to-list 'load-path "~/.emacs.d/doxymacs-1.8.0/lisp")
 (require 'doxymacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; supress the default startup messages
(setq-default transient-mark-mode t)
(setq inhibit-startup-message t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setup auto completion mode
(setq auto-completion-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable parenthesis matching globally 
(show-paren-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; line number mode
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; coulmn number mode
(add-hook 'find-file-hook (lambda () (column-number-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs git mode
(add-to-list 'load-path "/home/balaji/.emacs.d/git-emacs")
(require 'git-emacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; highlight the current line
(global-hl-line-mode t)
(make-variable-buffer-local 'global-hl-line-mode)
(set-face-background hl-line-face "yellow")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===== Turn on Auto Fill mode automatically in all modes =====

;; Auto-fill-mode the the automatic wrapping of lines and insertion of
;; newlines when the cursor goes over the column limit.

;; This should actually turn on auto-fill-mode by default in all major
;; modes. The other way to do this is to turn on the fill for specific modes
;; via hooks.
(setq-default truncate-lines t)
(setq-default fill-column 200)
(setq auto-fill-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; open files in read only mode by default (f3 can to used to change to write mode)
(add-hook 'find-file-hook (lambda () (toggle-read-only 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs multimedia player 
 (add-hook 'load-path "~/.emacs.d/emms-3.0/")
      (require 'emms-setup)
      (emms-standard)
      (emms-default-players)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; select color theme
;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-arjen)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org mode setup
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/.emacs.d/org/HotPower2012.org"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; custom key bindings for org mode 
(add-hook 'org-mode-hook
  (lambda ()
    (define-key org-mode-map [f1] 'org-insert-todo-heading)
    (define-key org-mode-map [f2] "\C-c\C-c")
    (define-key org-mode-map [f3] 'org-insert-subheading)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-semantic-speedbar-analysis ()
  (interactive)
  (if (get-buffer " SPEEDBAR")
      (kill-buffer " SPEEDBAR")
      (semantic-speedbar-analysis)
    (semantic-speedbar-analysis)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; custom key bindings
(global-set-key [f1] 'comment-region)    ;; Comment region
(global-set-key [f2] 'uncomment-region)  ;; Uncomment region
(global-set-key [f3] "\C-x\C-q")         ;; Change ro <+> rw mode 
(global-set-key [f4] "\C-xrk")           ;; Kill the  rectangular region
(global-set-key [f5] "\C-xrrr")          ;; Copy the rectangular region
(global-set-key [f6] "\C-xrir")          ;; Paste the rectangular region
(global-set-key [f7] 'kill-buffer-and-window)         ;; Search for a TAG
(global-set-key [f8] 'nuke-line)         ;; Delete a line
(global-set-key [f9] 'switch-to-term)    ;; Open or switch to a terminal 
(global-set-key [f10] 'next-buffer)      ;; Switch to next open buffer
;;(global-set-key [f11] "\C-u\M-.")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun switch-to-term ()
  (interactive)
  (if (get-buffer "*ansi-term*")
      (switch-to-buffer "*ansi-term*")
    (ansi-term "/bin/bash")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto insert headers
(load "~/.emacs.d/header2.el")
(add-hook 'c-mode-common-hook   'auto-make-header)
(add-hook 'write-file-hooks 'auto-update-file-header)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ===== Function to delete a line =====

;; First define a variable which will store the previous column position
(defvar previous-column nil "Save the column position")

;; Define the nuke-line function. The line is killed, then the newline
;; character is deleted. The column which the cursor was positioned at is then
;; restored. Because the kill-line function is used, the contents deleted can
;; be later restored by usibackward-delete-char-untabifyng the yank commands.
(defun nuke-line()
  "Kill an entire line, including the trailing newline character"
  (interactive)

  ;; Store the current column position, so it can later be restored for a more
  ;; natural feel to the deletion
  (setq previous-column (current-column))

  ;; Now move to the end of the current line
  (end-of-line)

  ;; Test the length of the line. If it is 0, there is no need for a
  ;; kill-line. All that happens in this case is that the new-line character
  ;; is deleted.
  (if (= (current-column) 0)
    (delete-char 1)

    ;; This is the 'else' clause. The current line being deleted is not zero
    ;; in length. First remove the line by moving to its start and then
    ;; killing, followed by deletion of the newline character, and then
    ;; finally restoration of the column position.
    (progn
      (beginning-of-line)
      (kill-line)
      (delete-char 1)
      (move-to-column previous-column))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; el-get
;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil t)
;;   (url-retrieve
;;    "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;    (lambda (s)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))

;; (el-get 'sync)
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(git-baseline-alist (quote (("/tmp/test_git/git_rebase/" . "master"))) t))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default fill-column 100)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (remove-if-not 'buffer-file-name (buffer-list)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/cedet-1.0/common/cedet.el")
;; This plain hack probably will not work with versions other than speedbar v 1.0
(defun speedbar-timer-fn ()
  "Run whenever Emacs is idle to update the speedbar item."
  (if (or (not (speedbar-current-frame))
	    (not (frame-live-p (speedbar-current-frame))))
      (speedbar-set-timer nil)
    ;; Save all the match data so that we don't mess up executing fns
    (save-match-data
      ;; Only do stuff if the frame is visible, not an icon, and if
      ;; it is currently flagged to do something.
      (if (and speedbar-update-flag
	              (speedbar-current-frame)
		             (frame-visible-p (speedbar-current-frame))
			            (not (eq (frame-visible-p (speedbar-current-frame)) 'icon)))
	    (let ((af (selected-frame)))
	            (dframe-select-attached-frame speedbar-frame)
		          ;; make sure we at least choose a window to
		          ;; get a good directory from
		          (if (window-minibuffer-p (selected-window))
			        nil
			    ;; Check for special modes
			    (speedbar-maybe-add-localized-support (current-buffer))
			    ;; Update for special mode all the time!
			    (if (and speedbar-mode-specific-contents-flag
				      (consp speedbar-special-mode-expansion-list)
				       (local-variable-p
					  'speedbar-special-mode-expansion-list
					    (current-buffer)))
				    ;;(eq (get major-mode 'mode-class 'special)))
				    (progn
				            (if (<= 2 speedbar-verbosity-level)
						  (speedbar-message
						      "Updating speedbar to special mode: %s..."
						         major-mode))
					          (speedbar-update-special-contents)
						        (if (<= 2 speedbar-verbosity-level)
							      (progn
								    (speedbar-message
								          "Updating speedbar to special mode: %s...done"
									       major-mode)
								        (speedbar-message nil))))

			        ;; Update all the contents if directories change!
			        (unless (and (or (member major-mode speedbar-ignored-modes)
						    (string-equal "*SPEEDBAR*" (buffer-name))
						       (not (buffer-file-name)))
					            ;; Always update for GUD.
					            (not (string-equal "GUD"
								            speedbar-initial-expansion-list-name)))
				      (speedbar-update-localized-contents)))
			    (select-frame af))
			      ;; Now run stealthy updates of time-consuming items
			      (speedbar-stealthy-updates)))))
  (run-hooks 'speedbar-timer-hook))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist
'("/usr/include/Qt" . c++-mode))

(semantic-add-system-include 
"/usr/include/Qt" 'c++-mode)
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
"/usr/include/Qt/qconfig.h")
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
"/usr/include/Qt/qconfig-dist.h")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu
;; control + space
(global-set-key [?\C- ] 'semantic-complete-analyze-inline)

(load-library "completion")
(global-set-key (kbd "C-.") 'complete)

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)
(semantic-load-enable-gaudy-code-helpers)
(require 'semantic-load)
(require 'semantic-gcc)
(require 'semantic-ia)
(require 'ede)
(require 'ede-locate)
(semantic-gcc-setup)
(setq semantic-load-turn-everything-on t)
(semantic-load-enable-excessive-code-helpers)
(global-ede-mode 1)
(global-semantic-idle-completions-mode nil)
(global-set-key "\C-\M-x" 'semantic-analyze-proto-impl-toggle)
(global-set-key [(control  <)] 'semantic-goto-definition)
(global-set-key [(control  >)] 'semantic-pop-tag-mark)
(defun my-cedet-hook ()
(local-set-key [(control return)] 'semantic-ia-complete-symbol)
(local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
(local-set-key "\t" 'semantic-complete-analyze-inline)
(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/sr-speedbar.el")
   (require 'sr-speedbar)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; custom key bindings programming mode
(defun my-programming-mode ()
    (local-set-key [f11] "\C-u\M-.") ;; Next tag declaration
    (local-set-key [f10] "\M-*") ;; Previous tag position  
    (local-set-key [f7] 'find-tag)    ;; Search for a tag
    (local-set-key [f5] 'semantic-speedbar-analysis)) ;; speedbar
;;    (local-set-key [f5] 'my-semantic-speedbar-analysis)) ;; speedbar
(add-hook 'c-mode-common-hook 'my-programming-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cuda syntax highlighting
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;