;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font family
(set-default-font "DejaVu Sans Mono")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scheme config
;; Enable Quack mode
;; The binary of your interpreter
(setq scheme-program-name "mit-scheme")
;; This hook lets you use your theme colours instead of quack's ones.
(defun scheme-mode-quack-hook ()
  (require 'quack)
  (setq quack-fontify-style 'emacs))
(add-hook 'scheme-mode-hook 'scheme-mode-quack-hook)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SICP setup :P
(fset 'setSchemeSicp
   "\C-[xrun-scheme\C-m\C-x3\C-x\C-f/home/mswork/ebooks/sicp.info\C-m\C-[xlocal-set-key\C-m\C-x\C-escheme-send-last-sexp\C-m")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font size
(set-face-attribute 'default nil :height 100)
(add-hook 'load-path "~/.emacs.d/"
 "~/.emacs.d/elpa/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evil mode
(add-to-list 'load-path "~/.emacs.d/elpa/evil")
(require 'evil)
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
;; supress the default startup messages
(setq-default transient-mark-mode t)
(setq inhibit-startup-message t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setup auto completion mode
(setq auto-completion-mode 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable parenthesis matching globally
(show-paren-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; line number mode
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; line number mode
(add-hook 'find-file-hook (lambda () (whitespace-mode 1)))
(add-hook 'find-file-hook (lambda () (local-set-key [f4] 'ispell-word)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toggle-truncate-lines
(add-hook 'find-file-hook (lambda () (toggle-truncate-lines 0)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; coulmn number mode
(add-hook 'find-file-hook (lambda () (column-number-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs git mode
(add-to-list 'load-path "/home/mswork/.emacs.d/git-emacs")
(require 'git-emacs)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; highlight the current line
;; Different option for X window vs terminal mode :)
(global-hl-line-mode 1)
(if window-system
    (set-face-background 'hl-line "#330")
  (make-variable-buffer-local 'global-hl-line-mode))  ;; Emacs 22 Only
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Remove the menu, tool and the scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
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
	    (define-key org-mode-map [f2] "\C-c\C-c")))
;;	    (define-key org-mode-map [f7] 'org-insert-subheading)))
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
;;(global-set-key [f4] "\C-xrk")           ;; Kill the  rectangular region
(global-set-key [f5] "\C-xrrr")          ;; Copy the rectangular region
(global-set-key [f6] "\C-xrir")          ;; Paste the rectangular region
(global-set-key [f7] "\C-x5o")           ;; Search for a TAG
(global-set-key [f8] 'nuke-line)         ;; Delete a line
(global-set-key [f9] 'switch-to-term)    ;; Open or switch to a terminal
(global-set-key [f10] 'next-buffer)      ;; Switch to next open buffer
(global-set-key [f11] "\C-u6\C-xTAB")
;;(global-set-key [f12] 'setSchemeSicp)
;;(global-unset-key (kbd "M-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key [backtab] "\C-xo")
(global-set-key (kbd "M-<up>") "\C-x5o")
(global-set-key (kbd "M-<down>") "\C-x5o")
(global-set-key (kbd "C-<up>") "\C-xo")
(global-set-key (kbd "C-<down>") "\C-xo")

(fset 'my-new-frame
   "\C-x52")
(fset 'my-toggle-frame
      "\C-x5o")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun myBook()
  (interactive)
  (w3-open-local "/home/mswork/ebooks/emacs.html"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(setq-default fill-column 10000)
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
;; Cuda syntax highlighting
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -== scala-mode ==-
(add-to-list 'load-path "~/.emacs.d/scala")
(require 'scala-mode-auto)
(add-hook 'scala-mode-hook
	  '(lambda ()
	     (scala-mode-feature-electric-mode)))
(require 'scala-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\.scala$" . scala-mode))
(add-to-list 'load-path "~/.emacs.d/scala/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; elpa package repository for emacs 24+
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(display-battery-mode 1)
(load-file "~/.emacs.d/elpa/langtool-20130920.407/langtool.el")
(setq langtool-language-tool-jar "~/.emacs.d/LanguageTool-2.4/languagetool-commandline.jar")
(setq langtool-mother-tongue "en")
;;(setq langtool-java-bin "/usr/bin/java")
(require 'langtool)
(put 'narrow-to-region 'disabled nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ido-mode 0)
(load "~/.emacs.d/elpa/elscreen-20120413.807/elscreen.el")
(require 'elscreen)
(elscreen-start)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; reddit
(add-to-list 'load-path "~/.emacs.d/elpa/markdown-mode-20131210.700")
(require 'markdown-mode)
(add-to-list 'load-path "~/.emacs.d/elpa/tree-mode-20121207.1538/")
(require 'tree-mode)
(add-to-list 'load-path "~/.emacs.d/elpa/")
(require 'reddit)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Nice trick to move between windows
(global-set-key [C-left]  'windmove-left)          ; move to left   window
(global-set-key [C-right] 'windmove-right)         ; move to right  window
(global-set-key [C-up]    'windmove-up)            ; move to upper  window
(global-set-key [C-down]  'windmove-down)          ; move to downer window
(global-set-key [M-left]  'windmove-left)          ; move to left   window
(global-set-key [M-right] 'windmove-right)         ; move to right  window
(global-set-key [M-up]    'windmove-up)            ; move to upper  window
(global-set-key [M-down]  'windmove-down)          ; move to downer window
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-source-correlate-method (quote synctex))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-source-specials-view-editor-flags "-editor \"%cS\" %d && wmctrl -a $(echo %d | sed -e 's/.dvi//g') #")
 '(TeX-view-program-list (quote (("Okular" "okular --unique %o#src:%n%b"))))
 '(TeX-view-program-selection (quote ((output-pdf "Okular") ((output-dvi style-pstricks) "dvips and gv") (output-dvi "Okular") (output-pdf "Evince") (output-html "xdg-open")))))

(add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.87.4/")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;;(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook (lambda () (global-hl-line-mode 0)))
(add-hook 'LaTeX-mode-hook (lambda ()
			  (local-set-key (kbd "C-c .")
			  (lambda () (interactive) (search-forward "." nil t)))))
(defun run-latex ()
    (interactive)
    (let ((process (TeX-active-process))) (if process (delete-process process)))
    (let ((TeX-save-query nil)) (TeX-save-document ""))
    (TeX-command-menu "LaTeX"))
;;(add-hook 'LaTeX-mode-hook (lambda () (local-set-key (kbd "C-x C-s") #'run-latex)))
(defun run-bibtex ()
    (interactive)
    (let ((process (TeX-active-process))) (if process (delete-process process)))
    (let ((TeX-save-query nil)) (TeX-save-document ""))
    (TeX-command-menu "BibTex"))

(defun my-run-latex ()
  (interactive)
  (if (buffer-modified-p)
      (progn
        (setq TeX-save-query nil)
        (TeX-save-document (TeX-master-file))
        (TeX-command "LaTeX" 'TeX-master-file -1))
    (TeX-view)))
;;(add-hook 'LaTeX-mode-hook (lambda () (local-set-key (kbd "C-x C-s") #'my-run-latex)))
(add-hook 'LaTeX-mode-hook '(lambda ()
     (add-hook 'after-save-hook 'my-run-latex)))

(add-hook 'LaTeX-mode-hook (lambda () (local-set-key [f4] 'ispell-word)))
(add-hook 'LaTeX-mode-hook (lambda () (local-set-key [f5] 'my-run-latex)))
(add-hook 'LaTeX-mode-hook (lambda () (local-set-key [f6] 'run-bibtex)))
(setq reftex-plug-into-AUCTeX t)
(require 'tex)
(defun TeX-synctex-output-page ()
  "Return the page corresponding to the current source position.
This method assumes that the document was compiled with SyncTeX
enabled and the `synctex' binary is available."
  (let ((synctex-output
	 (with-output-to-string
	   (call-process "synctex" nil (list standard-output nil) nil "view"
			 "-i" (format "%s:%s:%s" (line-number-at-pos)
				      (current-column)
				      ;; The real file name (not symbolic) fixed
				      ;; for the synctex path bug
                                      (concat (file-name-directory (file-truename (buffer-file-name)))
                                              "./"
                                              (file-name-nondirectory (buffer-file-name))))
			 "-o" (TeX-active-master (TeX-output-extension))))))
    (if (string-match "Page:\\([0-9]+\\)" synctex-output)
	(match-string 1 synctex-output)
      "1")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Whitespace config
;; display only tails of lines longer than 80 columns, tabs and
;; trailing whitespaces
;; face for long lines' tails
(setq whitespace-line-column 8000)
(setq whitespace-line-column 8000
      whitespace-style '(tabs trailing lines-tail))
(setq whitespace-line-column 8000
      whitespace-style '(face tabs trailing lines-tail))

(custom-set-faces
 '(whitespace-line ((t (:bold t :background "blue" :foreground "yellow"))))
 '(whitespace-tab  ((t (:bold t :background "black" :foreground "yellow"))))
 )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable mouse in nw
(xterm-mouse-mode t)
(mouse-wheel-mode t)
(setq x-select-enable-clipboard t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Random things that I try !!
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setenv "TERM" "emacs") ; enable colors
   ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
