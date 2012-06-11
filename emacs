(setq-default transient-mark-mode t)
(setq inhibit-startup-message t)
(setq auto-completion-mode t)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(add-hook 'find-file-hook (lambda () (global-hl-line-mode 1)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/.emacs.d/org/test.org"))
			     
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

;; Now bind the delete line function to the F8 key
(global-set-key [f8] 'nuke-line)
(global-set-key [f9] 'eshell-command)
(global-set-key [f10] 'shell-command-on-region)
;; shorcut for comment region
;;(global-unset-key "\C-c\C-c")
(global-set-key  [f1] 'comment-region)

;; shortcut for uncomment region
;;(global-unset-key "\C-c\C-u")
(global-set-key [f2] 'uncomment-region)
;;(global-set-key "\C-cg" 'goto-line) M-g
;; shortcut for vm 
(global-set-key [f11] 'vm)


;; C-x h -- select entire region
;;  M C \ --- indent region
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/")
;; ;;;(load "hnb")
;; (require 'hnb-mode)
;; (when (load "hnb-mode" t)
;;   (autoload 'hnb-mode "hnb-mode" "Hierarchal Notebook editing mode." t)
;;   (add-to-list 'auto-mode-alist '("\\.hnb$" . hnb-mode)))
