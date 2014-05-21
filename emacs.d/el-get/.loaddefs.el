;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (assistant) "assistant" "gnus/lisp/assistant.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/assistant.el

(autoload 'assistant "assistant" "\
Assist setting up Emacs based on FILE.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (auth-source-cache-expiry) "auth-source" "gnus/lisp/auth-source.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/auth-source.el

(defvar auth-source-cache-expiry 7200 "\
How many seconds passwords are cached, or nil to disable
expiring.  Overrides `password-cache-expiry' through a
let-binding.")

(custom-autoload 'auth-source-cache-expiry "auth-source" t)

;;;***

;;;### (autoloads (binhex-decode-region binhex-decode-region-external
;;;;;;  binhex-decode-region-internal) "binhex" "gnus/lisp/binhex.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/binhex.el

(defconst binhex-begin-line "^:...............................................................$" "\
Regular expression matching the start of a BinHex encoded region.")

(autoload 'binhex-decode-region-internal "binhex" "\
Binhex decode region between START and END without using an external program.
If HEADER-ONLY is non-nil only decode header and return filename.

\(fn START END &optional HEADER-ONLY)" t nil)

(autoload 'binhex-decode-region-external "binhex" "\
Binhex decode region between START and END using external decoder.

\(fn START END)" t nil)

(autoload 'binhex-decode-region "binhex" "\
Binhex decode region between START and END.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (canlock-verify canlock-insert-header) "canlock"
;;;;;;  "gnus/lisp/canlock.el" (21233 11095))
;;; Generated autoloads from gnus/lisp/canlock.el

(autoload 'canlock-insert-header "canlock" "\
Insert a Cancel-Key and/or a Cancel-Lock header if possible.

\(fn &optional ID-FOR-KEY ID-FOR-LOCK PASSWORD)" nil nil)

(autoload 'canlock-verify "canlock" "\
Verify Cancel-Lock or Cancel-Key in BUFFER.
If BUFFER is nil, the current buffer is assumed.  Signal an error if
it fails.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads (color-name-to-rgb) "color" "gnus/lisp/color.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/color.el

(autoload 'color-name-to-rgb "color" "\
Convert COLOR string to a list of normalized RGB components.
COLOR should be a color name (e.g. \"white\") or an RGB triplet
string (e.g. \"#ff12ec\").

Normally the return value is a list of three floating-point
numbers, (RED GREEN BLUE), each between 0.0 and 1.0 inclusive.

Optional argument FRAME specifies the frame where the color is to be
displayed.  If FRAME is omitted or nil, use the selected frame.
If FRAME cannot display COLOR, return nil.

\(fn COLOR &optional FRAME)" nil nil)

;;;***

;;;### (autoloads (color-theme-solarized-light color-theme-solarized-dark
;;;;;;  color-theme-solarized) "color-theme-solarized" "color-theme-solarized/color-theme-solarized.el"
;;;;;;  (21257 43447))
;;; Generated autoloads from color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn MODE)" t nil)

(autoload 'color-theme-solarized-dark "color-theme-solarized" "\
Not documented

\(fn)" t nil)

(autoload 'color-theme-solarized-light "color-theme-solarized" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-article-outlook-deuglify-article gnus-outlook-deuglify-article
;;;;;;  gnus-article-outlook-repair-attribution gnus-article-outlook-unwrap-lines)
;;;;;;  "deuglify" "gnus/lisp/deuglify.el" (21233 11095))
;;; Generated autoloads from gnus/lisp/deuglify.el

(autoload 'gnus-article-outlook-unwrap-lines "deuglify" "\
Unwrap lines that appear to be wrapped citation lines.
You can control what lines will be unwrapped by frobbing
`gnus-outlook-deuglify-unwrap-min' and `gnus-outlook-deuglify-unwrap-max',
indicating the minimum and maximum length of an unwrapped citation line.  If
NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-article-outlook-repair-attribution "deuglify" "\
Repair a broken attribution line.
If NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-outlook-deuglify-article "deuglify" "\
Full deuglify of broken Outlook (Express) articles.
Treat dumbquotes, unwrap lines, repair attribution and rearrange citation.  If
NODISPLAY is non-nil, don't redisplay the article buffer.

\(fn &optional NODISPLAY)" t nil)

(autoload 'gnus-article-outlook-deuglify-article "deuglify" "\
Deuglify broken Outlook (Express) articles and redisplay.

\(fn)" t nil)

;;;***

;;;### (autoloads (dig) "dig" "gnus/lisp/dig.el" (21233 11095))
;;; Generated autoloads from gnus/lisp/dig.el

(autoload 'dig "dig" "\
Query addresses of a DOMAIN using dig, by calling `dig-invoke'.
Optional arguments are passed to `dig-invoke'.

\(fn DOMAIN &optional QUERY-TYPE QUERY-CLASS QUERY-OPTION DIG-OPTION SERVER)" t nil)

;;;***

;;;### (autoloads (dns-mode-soa-increment-serial dns-mode) "dns-mode"
;;;;;;  "gnus/lisp/dns-mode.el" (21233 11095))
;;; Generated autoloads from gnus/lisp/dns-mode.el

(autoload 'dns-mode "dns-mode" "\
Major mode for viewing and editing DNS master files.
This mode is inherited from text mode.  It add syntax
highlighting, and some commands for handling DNS master files.
Its keymap inherits from `text-mode' and it has the same
variables for customizing indentation.  It has its own abbrev
table and its own syntax table.

Turning on DNS mode runs `dns-mode-hook'.

\(fn)" t nil)
 (defalias 'zone-mode 'dns-mode)

(autoload 'dns-mode-soa-increment-serial "dns-mode" "\
Locate SOA record and increment the serial field.

\(fn)" t nil)

;;;***

;;;### (autoloads (eassist-list-methods eassist-switch-h-cpp) "eassist"
;;;;;;  "eassist/eassist.el" (21267 27657))
;;; Generated autoloads from eassist/eassist.el

(defvar eassist-header-switches '(("h" "cpp" "cc" "c") ("hpp" "cpp" "cc") ("cpp" "h" "hpp") ("c" "h") ("C" "H") ("H" "C" "CPP" "CC") ("cc" "h" "hpp")) "\
This variable defines possible switches for `eassist-switch-h-cpp' function.
Its format is list of (from . (to1 to2 to3...)) elements.  From and toN are
strings which are extentions of the files.")

(autoload 'eassist-switch-h-cpp "eassist" "\
Switch header and body file according to `eassist-header-switches' var.
The current buffer's file name extention is searched in
`eassist-header-switches' variable to find out extention for file's counterpart,
for example *.hpp <--> *.cpp.

\(fn)" t nil)

(autoload 'eassist-list-methods "eassist" "\
Show method/function list of current buffer in a newly created buffer.
This function is recommended to be bound to some convinient hotkey.

\(fn)" t nil)

;;;***

;;;### (autoloads (ecomplete-setup) "ecomplete" "gnus/lisp/ecomplete.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/ecomplete.el

(autoload 'ecomplete-setup "ecomplete" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (ediff-toggle-ignore-case) "ediff+" "ediff+/ediff+.el"
;;;;;;  (21267 27660))
;;; Generated autoloads from ediff+/ediff+.el

(autoload 'ediff-toggle-ignore-case "ediff+" "\
Not documented

\(fn)" t nil)

(when (< emacs-major-version 22) (defun ediff-help-for-quick-help nil "Explain Ediff commands in more detail." (interactive) (ediff-barf-if-not-control-buffer) (let ((pos (ediff-event-point last-command-event)) overl cmd) (if ediff-xemacs-p (setq overl (extent-at pos (current-buffer) 'ediff-help-info) cmd (ediff-overlay-get overl 'ediff-help-info)) (setq cmd (car (mapcar #'(lambda (elt) (overlay-get elt 'ediff-help-info)) (overlays-at pos))))) (if (not (stringp cmd)) (error "Hmm... I don't see an Ediff command around here...")) (ediff-documentation "Quick Help Commands") (let ((case-fold-search nil)) (cond ((string= cmd "?") (re-search-forward "^`\\?'")) ((string= cmd "G") (re-search-forward "^`G'")) ((string= cmd "E") (re-search-forward "^`E'")) ((string= cmd "wd") (re-search-forward "^`wd'")) ((string= cmd "wx") (re-search-forward "^`wa'")) ((string= cmd "a/b") (re-search-forward "^`a'")) ((string= cmd "x") (re-search-forward "^`a'")) ((string= cmd "xy") (re-search-forward "^`ab'")) ((string= cmd "p,DEL") (re-search-forward "^`p'")) ((string= cmd "n,SPC") (re-search-forward "^`n'")) ((string= cmd "j") (re-search-forward "^`j'")) ((string= cmd "gx") (re-search-forward "^`ga'")) ((string= cmd "!") (re-search-forward "^`!'")) ((string= cmd "*") (re-search-forward "^`\\*'")) ((string= cmd "m") (re-search-forward "^`m'")) ((string= cmd "|") (re-search-forward "^`|'")) ((string= cmd "@") (re-search-forward "^`@'")) ((string= cmd "h") (re-search-forward "^`h'")) ((string= cmd "r") (re-search-forward "^`r'")) ((string= cmd "rx") (re-search-forward "^`ra'")) ((string= cmd "##") (re-search-forward "^`##'")) ((string= cmd "#c") (re-search-forward "^`#c'")) ((string= cmd "#f/#h") (re-search-forward "^`#f'")) ((string= cmd "X") (re-search-forward "^`A'")) ((string= cmd "v/V") (re-search-forward "^`v'")) ((string= cmd "</>") (re-search-forward "^`<'")) ((string= cmd "~") (re-search-forward "^`~'")) ((string= cmd "i") (re-search-forward "^`i'")) ((string= cmd "D") (re-search-forward "^`D'")) ((string= cmd "R") (re-search-forward "^`R'")) ((string= cmd "M") (re-search-forward "^`M'")) ((string= cmd "z/q") (re-search-forward "^`z'")) ((string= cmd "%") (re-search-forward "^`%'")) ((string= cmd "C-l") (re-search-forward "^`C-l'")) ((and (> emacs-major-version 20) (string= cmd "$$")) (re-search-forward "^`\\$\\$'")) ((and (> emacs-major-version 20) (string= cmd "$*")) (re-search-forward "^`\\$\\*'")) ((and (< emacs-major-version 21) (string= cmd "$")) (re-search-forward "^`\\$'")) ((string= cmd "/") (re-search-forward "^`/'")) ((string= cmd "&") (re-search-forward "^`&'")) ((string= cmd "s") (re-search-forward "^`s'")) ((string= cmd "+") (re-search-forward "^`\\+'")) ((string= cmd "=") (re-search-forward "^`='")) (t (error "Undocumented command! Type `G' in Ediff Control Panel to drop a note to the Ediff maintainer")))))))

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get" "el-get/el-get.el" (21233 10306))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21233 10306))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (fill-flowed fill-flowed-encode) "flow-fill" "gnus/lisp/flow-fill.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/flow-fill.el

(autoload 'fill-flowed-encode "flow-fill" "\
Not documented

\(fn &optional BUFFER)" nil nil)

(autoload 'fill-flowed "flow-fill" "\
Not documented

\(fn &optional BUFFER DELETE-SPACE)" nil nil)

;;;***

;;;### (autoloads (ghc-init) "ghc" "ghc-mod/elisp/ghc.el" (21233
;;;;;;  10453))
;;; Generated autoloads from ghc-mod/elisp/ghc.el

(autoload 'ghc-init "ghc" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (ghc-core-mode ghc-core-create-core) "ghc-core"
;;;;;;  "haskell-mode/ghc-core.el" (21233 11601))
;;; Generated autoloads from haskell-mode/ghc-core.el

(autoload 'ghc-core-create-core "ghc-core" "\
Compile and load the current buffer as tidy core.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads (git-reblame git-blame-mode) "git-blame" "git-emacs/git-blame.el"
;;;;;;  (21233 10628))
;;; Generated autoloads from git-emacs/git-blame.el

(autoload 'git-blame-mode "git-blame" "\
Toggle minor mode for displaying Git blame

With prefix ARG, turn the mode on if ARG is positive.

\(fn &optional ARG)" t nil)

(autoload 'git-reblame "git-blame" "\
Recalculate all blame information in the current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads (git-commit-mode) "git-commit-mode" "git-modes/git-commit-mode.el"
;;;;;;  (21233 10441))
;;; Generated autoloads from git-modes/git-commit-mode.el

(autoload 'git-commit-mode "git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(dolist (pattern '("/COMMIT_EDITMSG\\'" "/NOTES_EDITMSG\\'" "/MERGE_MSG\\'" "/TAG_EDITMSG\\'" "/PULLREQ_EDITMSG\\'")) (add-to-list 'auto-mode-alist (cons pattern 'git-commit-mode)))

;;;***

;;;### (autoloads (git-rebase-mode) "git-rebase-mode" "git-modes/git-rebase-mode.el"
;;;;;;  (21233 10441))
;;; Generated autoloads from git-modes/git-rebase-mode.el

(autoload 'git-rebase-mode "git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads (gitattributes-mode) "gitattributes-mode" "git-modes/gitattributes-mode.el"
;;;;;;  (21233 10441))
;;; Generated autoloads from git-modes/gitattributes-mode.el

(autoload 'gitattributes-mode "gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads (gitconfig-mode) "gitconfig-mode" "git-modes/gitconfig-mode.el"
;;;;;;  (21233 10441))
;;; Generated autoloads from git-modes/gitconfig-mode.el

(autoload 'gitconfig-mode "gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads (gitignore-mode) "gitignore-mode" "git-modes/gitignore-mode.el"
;;;;;;  (21233 10441))
;;; Generated autoloads from git-modes/gitignore-mode.el

(autoload 'gitignore-mode "gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads (gmm-tool-bar-from-list gmm-widget-p gmm-error
;;;;;;  gmm-message gmm-regexp-concat) "gmm-utils" "gnus/lisp/gmm-utils.el"
;;;;;;  (21233 11095))
;;; Generated autoloads from gnus/lisp/gmm-utils.el

(autoload 'gmm-regexp-concat "gmm-utils" "\
Potentially concat a list of regexps into a single one.
The concatenation is done with logical ORs.

\(fn REGEXP)" nil nil)

(autoload 'gmm-message "gmm-utils" "\
If LEVEL is lower than `gmm-verbose' print ARGS using `message'.

Guideline for numbers:
1 - error messages
3 - non-serious error messages
5 - messages for things that take a long time
7 - not very important messages on stuff
9 - messages inside loops.

\(fn LEVEL &rest ARGS)" nil nil)

(autoload 'gmm-error "gmm-utils" "\
Beep an error if LEVEL is equal to or less than `gmm-verbose'.
ARGS are passed to `message'.

\(fn LEVEL &rest ARGS)" nil nil)

(autoload 'gmm-widget-p "gmm-utils" "\
Non-nil if SYMBOL is a widget.

\(fn SYMBOL)" nil nil)

(autoload 'gmm-tool-bar-from-list "gmm-utils" "\
Make a tool bar from ICON-LIST.

Within each entry of ICON-LIST, the first element is a menu
command, the second element is an icon file name and the third
element is a test function.  You can use \\[describe-key]
<menu-entry> to find out the name of a menu command.  The fourth
and all following elements are passed as the PROPS argument to the
function `tool-bar-local-item'.

If ZAP-LIST is a list, remove those item from the default
`tool-bar-map'.  If it is t, start with a new sparse map.  You
can use \\[describe-key] <icon> to find out the name of an icon
item.  When \\[describe-key] <icon> shows \"<tool-bar> <new-file>
runs the command find-file\", then use `new-file' in ZAP-LIST.

DEFAULT-MAP specifies the default key map for ICON-LIST.

\(fn ICON-LIST ZAP-LIST DEFAULT-MAP)" nil nil)

;;;***

;;;### (autoloads (gnuplot-make-buffer gnuplot-mode) "gnuplot" "gnuplot-mode/gnuplot.el"
;;;;;;  (21233 11539))
;;; Generated autoloads from gnuplot-mode/gnuplot.el

(autoload 'gnuplot-mode "gnuplot" "\
Major mode for editing and executing GNUPLOT scripts.
This was written with version 4.6 of gnuplot in mind, but should
work with newer and older versions.

Report bugs in `gnuplot-mode' using \\[gnuplot-bug-report].

			    ------O------

Gnuplot-mode includes two different systems for keyword
completion and documentation lookup: a newer one,
`gnuplot-context-sensitive-mode' (enabled by default), and a
older one which extracts keywords from gnuplot's Info file.  Both
systems allow looking up documentation in the Info file.  The
older system also depends having the info file properly installed
to make a list of keywords.

The info file should be installed by default with the Gnuplot
distribution, or is available at the `gnuplot-mode' web page:
http://github.com/bruceravel/gnuplot-mode/

With the new context-sensitive mode active, gnuplot-mode can also
provide `eldoc-mode' syntax hints as you type.  This requires a
separate file of strings, `gnuplot-eldoc.el', which is also
provided by recent Gnuplot distributions.

			    ------O------

There are several known shortcomings of `gnuplot-mode', version 0.5g
and up.  Many of the shortcomings involve the graphical interface
\(refered to as the GUI) to setting arguments to plot options.  Here is
a list:

 1.  Currently there is no way for `gnuplot-mode' to know if information
     sent to gnuplot was correctly plotted.
 2.  \"plot\", \"splot\", and \"fit\" are handled in the GUI, but are
     a bit flaky.  Their arguments may not be read correctly from
     existing text, and continuation lines (common for plot and splot)
     are not supported.
 3.  The GUI does not know how to read from continuation lines.
 4.  Comma separated position arguments to plot options are
     unsupported in the GUI.  Colon separated datafile modifiers (used
     for plot, splot, and fit) are not supported either.  Arguments
     not yet supported by the GUI generate messages printed in grey
     text.
 5.  The GUI handling of \"hidden3d\" is flaky and \"cntrparam\" is
     unsupported.

			    ------O------

 Key bindings:
 \\{gnuplot-mode-map}

\(fn)" t nil)

(autoload 'gnuplot-make-buffer "gnuplot" "\
Open a new buffer in `gnuplot-mode'.
When invoked, it switches to a new, empty buffer visiting no file
and then starts `gnuplot-mode'.

It is convenient to bind this function to a global key sequence.  For
example, to make the F10 key open a gnuplot script buffer, put the
following in your .emacs file:
     (autoload 'gnuplot-make-buffer \"gnuplot\"
               \"open a buffer in gnuplot mode\" t)
     (global-set-key [(f10)] 'gnuplot-make-buffer)

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus gnus-other-frame gnus-slave gnus-no-server
;;;;;;  gnus-slave-no-server) "gnus" "gnus/lisp/gnus.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus.el
(when (fboundp 'custom-autoload)
 (custom-autoload 'gnus-select-method "gnus"))

(autoload 'gnus-slave-no-server "gnus" "\
Read network news as a slave, without connecting to the local server.

\(fn &optional ARG)" t nil)

(autoload 'gnus-no-server "gnus" "\
Read network news.
If ARG is a positive number, Gnus will use that as the startup
level. If ARG is nil, Gnus will be started at level 2.  If ARG is
non-nil and not a positive number, Gnus will prompt the user for the
name of an NNTP server to use.
As opposed to `gnus', this command will not connect to the local
server.

\(fn &optional ARG SLAVE)" t nil)

(autoload 'gnus-slave "gnus" "\
Read news as a slave.

\(fn &optional ARG)" t nil)

(autoload 'gnus-other-frame "gnus" "\
Pop up a frame to read news.
This will call one of the Gnus commands which is specified by the user
option `gnus-other-frame-function' (default `gnus') with the argument
ARG if Gnus is not running, otherwise pop up a Gnus frame and run the
command specified by `gnus-other-frame-resume-function'.
The optional second argument DISPLAY should be a standard display string
such as \"unix:0\" to specify where to pop up a frame.  If DISPLAY is
omitted or the function `make-frame-on-display' is not available, the
current display is used.

\(fn &optional ARG DISPLAY)" t nil)

(autoload 'gnus "gnus" "\
Read network news.
If ARG is non-nil and a positive number, Gnus will use that as the
startup level.  If ARG is non-nil and not a positive number, Gnus will
prompt the user for the name of an NNTP server to use.

\(fn &optional ARG DONT-CONNECT SLAVE)" t nil)

;;;***

;;;### (autoloads (gnus-agent-regenerate gnus-agent-batch gnus-agent-batch-fetch
;;;;;;  gnus-agent-find-parameter gnus-agent-possibly-alter-active
;;;;;;  gnus-agent-get-undownloaded-list gnus-agent-delete-group
;;;;;;  gnus-agent-rename-group gnus-agent-possibly-save-gcc gnus-agentize
;;;;;;  gnus-slave-unplugged gnus-plugged gnus-unplugged) "gnus-agent"
;;;;;;  "gnus/lisp/gnus-agent.el" (21233 11095))
;;; Generated autoloads from gnus/lisp/gnus-agent.el

(autoload 'gnus-unplugged "gnus-agent" "\
Start Gnus unplugged.

\(fn)" t nil)

(autoload 'gnus-plugged "gnus-agent" "\
Start Gnus plugged.

\(fn)" t nil)

(autoload 'gnus-slave-unplugged "gnus-agent" "\
Read news as a slave unplugged.

\(fn &optional ARG)" t nil)

(autoload 'gnus-agentize "gnus-agent" "\
Allow Gnus to be an offline newsreader.

The gnus-agentize function is now called internally by gnus when
gnus-agent is set.  If you wish to avoid calling gnus-agentize,
customize gnus-agent to nil.

This will modify the `gnus-setup-news-hook', and
`message-send-mail-real-function' variables, and install the Gnus agent
minor mode in all Gnus buffers.

\(fn)" t nil)

(autoload 'gnus-agent-possibly-save-gcc "gnus-agent" "\
Save GCC if Gnus is unplugged.

\(fn)" nil nil)

(autoload 'gnus-agent-rename-group "gnus-agent" "\
Rename fully-qualified OLD-GROUP as NEW-GROUP.
Always updates the agent, even when disabled, as the old agent
files would corrupt gnus when the agent was next enabled.
Depends upon the caller to determine whether group renaming is
supported.

\(fn OLD-GROUP NEW-GROUP)" nil nil)

(autoload 'gnus-agent-delete-group "gnus-agent" "\
Delete fully-qualified GROUP.
Always updates the agent, even when disabled, as the old agent
files would corrupt gnus when the agent was next enabled.
Depends upon the caller to determine whether group deletion is
supported.

\(fn GROUP)" nil nil)

(autoload 'gnus-agent-get-undownloaded-list "gnus-agent" "\
Construct list of articles that have not been downloaded.

\(fn)" nil nil)

(autoload 'gnus-agent-possibly-alter-active "gnus-agent" "\
Possibly expand a group's active range to include articles
downloaded into the agent.

\(fn GROUP ACTIVE &optional INFO)" nil nil)

(autoload 'gnus-agent-find-parameter "gnus-agent" "\
Search for GROUPs SYMBOL in the group's parameters, the group's
topic parameters, the group's category, or the customizable
variables.  Returns the first non-nil value found.

\(fn GROUP SYMBOL)" nil nil)

(autoload 'gnus-agent-batch-fetch "gnus-agent" "\
Start Gnus and fetch session.

\(fn)" t nil)

(autoload 'gnus-agent-batch "gnus-agent" "\
Start Gnus, send queue and fetch session.

\(fn)" t nil)

(autoload 'gnus-agent-regenerate "gnus-agent" "\
Regenerate all agent covered files.
CLEAN is obsolete and ignored.

\(fn &optional _CLEAN REREAD)" t nil)

;;;***

;;;### (autoloads (gnus-article-prepare-display) "gnus-art" "gnus/lisp/gnus-art.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-art.el

(autoload 'gnus-article-prepare-display "gnus-art" "\
Make the current buffer look like a nice article.

\(fn)" nil nil)

;;;***

;;;### (autoloads (gnus-bookmark-bmenu-list gnus-bookmark-jump gnus-bookmark-set)
;;;;;;  "gnus-bookmark" "gnus/lisp/gnus-bookmark.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-bookmark.el

(autoload 'gnus-bookmark-set "gnus-bookmark" "\
Set a bookmark for this article.

\(fn)" t nil)

(autoload 'gnus-bookmark-jump "gnus-bookmark" "\
Jump to a Gnus bookmark (BMK-NAME).

\(fn &optional BMK-NAME)" t nil)

(autoload 'gnus-bookmark-bmenu-list "gnus-bookmark" "\
Display a list of existing Gnus bookmarks.
The list is displayed in a buffer named `*Gnus Bookmark List*'.
The leftmost column displays a D if the bookmark is flagged for
deletion, or > if it is flagged for displaying.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-cache-delete-group gnus-cache-rename-group
;;;;;;  gnus-cache-generate-nov-databases gnus-cache-generate-active
;;;;;;  gnus-jog-cache) "gnus-cache" "gnus/lisp/gnus-cache.el" (21233
;;;;;;  11096))
;;; Generated autoloads from gnus/lisp/gnus-cache.el

(autoload 'gnus-jog-cache "gnus-cache" "\
Go through all groups and put the articles into the cache.

Usage:
$ emacs -batch -l ~/.emacs -l gnus -f gnus-jog-cache

\(fn)" t nil)

(autoload 'gnus-cache-generate-active "gnus-cache" "\
Generate the cache active file.

\(fn &optional DIRECTORY)" t nil)

(autoload 'gnus-cache-generate-nov-databases "gnus-cache" "\
Generate NOV files recursively starting in DIR.

\(fn DIR)" t nil)

(autoload 'gnus-cache-rename-group "gnus-cache" "\
Rename OLD-GROUP as NEW-GROUP.
Always updates the cache, even when disabled, as the old cache
files would corrupt Gnus when the cache was next enabled.  It
depends on the caller to determine whether group renaming is
supported.

\(fn OLD-GROUP NEW-GROUP)" nil nil)

(autoload 'gnus-cache-delete-group "gnus-cache" "\
Delete GROUP from the cache.
Always updates the cache, even when disabled, as the old cache
files would corrupt gnus when the cache was next enabled.
Depends upon the caller to determine whether group deletion is
supported.

\(fn GROUP)" nil nil)

;;;***

;;;### (autoloads (gnus-delay-initialize gnus-delay-send-queue gnus-delay-article)
;;;;;;  "gnus-delay" "gnus/lisp/gnus-delay.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-delay.el

(autoload 'gnus-delay-article "gnus-delay" "\
Delay this article by some time.
DELAY is a string, giving the length of the time.  Possible values are:

* <digits><units> for <units> in minutes (`m'), hours (`h'), days (`d'),
  weeks (`w'), months (`M'), or years (`Y');

* YYYY-MM-DD for a specific date.  The time of day is given by the
  variable `gnus-delay-default-hour', minute and second are zero.

* hh:mm for a specific time.  Use 24h format.  If it is later than this
  time, then the deadline is tomorrow, else today.

\(fn DELAY)" t nil)

(autoload 'gnus-delay-send-queue "gnus-delay" "\
Send all the delayed messages that are due now.

\(fn)" t nil)

(autoload 'gnus-delay-initialize "gnus-delay" "\
Initialize the gnus-delay package.
This sets up a key binding in `message-mode' to delay a message.
This tells Gnus to look for delayed messages after getting new news.

The optional arg NO-KEYMAP is ignored.
Checking delayed messages is skipped if optional arg NO-CHECK is non-nil.

\(fn &optional NO-KEYMAP NO-CHECK)" nil nil)

;;;***

;;;### (autoloads (gnus-user-format-function-D gnus-user-format-function-d)
;;;;;;  "gnus-diary" "gnus/lisp/gnus-diary.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-diary.el

(autoload 'gnus-user-format-function-d "gnus-diary" "\
Not documented

\(fn HEADER)" nil nil)

(autoload 'gnus-user-format-function-D "gnus-diary" "\
Not documented

\(fn HEADER)" nil nil)

;;;***

;;;### (autoloads (turn-on-gnus-dired-mode) "gnus-dired" "gnus/lisp/gnus-dired.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-dired.el

(autoload 'turn-on-gnus-dired-mode "gnus-dired" "\
Convenience method to turn on gnus-dired-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-draft-reminder) "gnus-draft" "gnus/lisp/gnus-draft.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-draft.el

(autoload 'gnus-draft-reminder "gnus-draft" "\
Reminder user if there are unsent drafts.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-insert-random-face-header gnus-random-face
;;;;;;  gnus-convert-png-to-face gnus-convert-face-to-png gnus-face-from-file
;;;;;;  gnus-x-face-from-file gnus-insert-random-x-face-header gnus-random-x-face
;;;;;;  gnus--random-face-with-type) "gnus-fun" "gnus/lisp/gnus-fun.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-fun.el

(autoload 'gnus--random-face-with-type "gnus-fun" "\
Return file from DIR with extension EXT, omitting matches of OMIT, processed by FUN.

\(fn DIR EXT OMIT FUN)" nil nil)

(autoload 'message-goto-eoh "message" nil t)

(autoload 'gnus-random-x-face "gnus-fun" "\
Return X-Face header data chosen randomly from `gnus-x-face-directory'.

Files matching `gnus-x-face-omit-files' are not considered.

\(fn)" t nil)

(autoload 'gnus-insert-random-x-face-header "gnus-fun" "\
Insert a random X-Face header from `gnus-x-face-directory'.

\(fn)" t nil)

(autoload 'gnus-x-face-from-file "gnus-fun" "\
Insert an X-Face header based on an image FILE.

Depending on `gnus-convert-image-to-x-face-command' it may accept
different input formats.

\(fn FILE)" t nil)

(autoload 'gnus-face-from-file "gnus-fun" "\
Return a Face header based on an image FILE.

Depending on `gnus-convert-image-to-face-command' it may accept
different input formats.

\(fn FILE)" t nil)

(autoload 'gnus-convert-face-to-png "gnus-fun" "\
Convert FACE (which is base64-encoded) to a PNG.
The PNG is returned as a string.

\(fn FACE)" nil nil)

(autoload 'gnus-convert-png-to-face "gnus-fun" "\
Convert FILE to a Face.
FILE should be a PNG file that's 48x48 and smaller than or equal to
726 bytes.

\(fn FILE)" nil nil)

(autoload 'gnus-random-face "gnus-fun" "\
Return randomly chosen Face from `gnus-face-directory'.

Files matching `gnus-face-omit-files' are not considered.

\(fn)" t nil)

(autoload 'gnus-insert-random-face-header "gnus-fun" "\
Insert a randome Face header from `gnus-face-directory'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (gnus-treat-mail-gravatar gnus-treat-from-gravatar)
;;;;;;  "gnus-gravatar" "gnus/lisp/gnus-gravatar.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-gravatar.el

(autoload 'gnus-treat-from-gravatar "gnus-gravatar" "\
Display gravatar in the From header.
If gravatar is already displayed, remove it.

\(fn &optional FORCE)" t nil)

(autoload 'gnus-treat-mail-gravatar "gnus-gravatar" "\
Display gravatars in the Cc and To headers.
If gravatars are already displayed, remove them.

\(fn &optional FORCE)" t nil)

;;;***

;;;### (autoloads (gnus-fetch-group-other-frame gnus-fetch-group)
;;;;;;  "gnus-group" "gnus/lisp/gnus-group.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-group.el

(autoload 'gnus-fetch-group "gnus-group" "\
Start Gnus if necessary and enter GROUP.
If ARTICLES, display those articles.
Returns whether the fetching was successful or not.

\(fn GROUP &optional ARTICLES)" t nil)

(autoload 'gnus-fetch-group-other-frame "gnus-group" "\
Pop up a frame and enter GROUP.

\(fn GROUP)" t nil)

;;;***

;;;### (autoloads (gnus-html-prefetch-images gnus-article-html) "gnus-html"
;;;;;;  "gnus/lisp/gnus-html.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-html.el

(autoload 'gnus-article-html "gnus-html" "\
Not documented

\(fn &optional HANDLE)" nil nil)

(autoload 'gnus-html-prefetch-images "gnus-html" "\
Not documented

\(fn SUMMARY)" nil nil)

;;;***

;;;### (autoloads (gnus-batch-score) "gnus-kill" "gnus/lisp/gnus-kill.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-kill.el

(defalias 'gnus-batch-kill 'gnus-batch-score)

(autoload 'gnus-batch-score "gnus-kill" "\
Run batched scoring.
Usage: emacs -batch -l ~/.emacs -l gnus -f gnus-batch-score

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-mailing-list-mode gnus-mailing-list-insinuate
;;;;;;  turn-on-gnus-mailing-list-mode) "gnus-ml" "gnus/lisp/gnus-ml.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-ml.el

(autoload 'turn-on-gnus-mailing-list-mode "gnus-ml" "\
Not documented

\(fn)" nil nil)

(autoload 'gnus-mailing-list-insinuate "gnus-ml" "\
Setup group parameters from List-Post header.
If FORCE is non-nil, replace the old ones.

\(fn &optional FORCE)" t nil)

(autoload 'gnus-mailing-list-mode "gnus-ml" "\
Minor mode for providing mailing-list commands.

\\{gnus-mailing-list-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (gnus-group-split-fancy gnus-group-split gnus-group-split-update
;;;;;;  gnus-group-split-setup) "gnus-mlspl" "gnus/lisp/gnus-mlspl.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-mlspl.el

(autoload 'gnus-group-split-setup "gnus-mlspl" "\
Set up the split for `nnmail-split-fancy'.
Sets things up so that nnmail-split-fancy is used for mail
splitting, and defines the variable nnmail-split-fancy according with
group parameters.

If AUTO-UPDATE is non-nil (prefix argument accepted, if called
interactively), it makes sure nnmail-split-fancy is re-computed before
getting new mail, by adding `gnus-group-split-update' to
`nnmail-pre-get-new-mail-hook'.

A non-nil CATCH-ALL replaces the current value of
`gnus-group-split-default-catch-all-group'.  This variable is only used
by gnus-group-split-update, and only when its CATCH-ALL argument is
nil.  This argument may contain any fancy split, that will be added as
the last split in a `|' split produced by `gnus-group-split-fancy',
unless overridden by any group marked as a catch-all group.  Typical
uses are as simple as the name of a default mail group, but more
elaborate fancy splits may also be useful to split mail that doesn't
match any of the group-specified splitting rules.  See
`gnus-group-split-fancy' for details.

\(fn &optional AUTO-UPDATE CATCH-ALL)" t nil)

(autoload 'gnus-group-split-update "gnus-mlspl" "\
Computes nnmail-split-fancy from group params and CATCH-ALL.
It does this by calling by calling (gnus-group-split-fancy nil
nil CATCH-ALL).

If CATCH-ALL is nil, `gnus-group-split-default-catch-all-group' is used
instead.  This variable is set by `gnus-group-split-setup'.

\(fn &optional CATCH-ALL)" t nil)

(autoload 'gnus-group-split "gnus-mlspl" "\
Use information from group parameters in order to split mail.
See `gnus-group-split-fancy' for more information.

`gnus-group-split' is a valid value for `nnmail-split-methods'.

\(fn)" nil nil)

(autoload 'gnus-group-split-fancy "gnus-mlspl" "\
Uses information from group parameters in order to split mail.
It can be embedded into `nnmail-split-fancy' lists with the SPLIT

\(: gnus-group-split-fancy GROUPS NO-CROSSPOST CATCH-ALL)

GROUPS may be a regular expression or a list of group names, that will
be used to select candidate groups.  If it is omitted or nil, all
existing groups are considered.

if NO-CROSSPOST is omitted or nil, a & split will be returned,
otherwise, a | split, that does not allow crossposting, will be
returned.

For each selected group, a SPLIT is composed like this: if SPLIT-SPEC
is specified, this split is returned as-is (unless it is nil: in this
case, the group is ignored).  Otherwise, if TO-ADDRESS, TO-LIST and/or
EXTRA-ALIASES are specified, a regexp that matches any of them is
constructed (extra-aliases may be a list).  Additionally, if
SPLIT-REGEXP is specified, the regexp will be extended so that it
matches this regexp too, and if SPLIT-EXCLUDE is specified, RESTRICT
clauses will be generated.

If CATCH-ALL is nil, no catch-all handling is performed, regardless of
catch-all marks in group parameters.  Otherwise, if there is no
selected group whose SPLIT-REGEXP matches the empty string, nor is
there a selected group whose SPLIT-SPEC is 'catch-all, this fancy
split (say, a group name) will be appended to the returned SPLIT list,
as the last element of a '| SPLIT.

For example, given the following group parameters:

nnml:mail.bar:
\((to-address . \"bar@femail.com\")
 (split-regexp . \".*@femail\\\\.com\"))
nnml:mail.foo:
\((to-list . \"foo@nowhere.gov\")
 (extra-aliases \"foo@localhost\" \"foo-redist@home\")
 (split-exclude \"bugs-foo\" \"rambling-foo\")
 (admin-address . \"foo-request@nowhere.gov\"))
nnml:mail.others:
\((split-spec . catch-all))

Calling (gnus-group-split-fancy nil nil \"mail.others\") returns:

\(| (& (any \"\\\\(bar@femail\\\\.com\\\\|.*@femail\\\\.com\\\\)\"
	   \"mail.bar\")
      (any \"\\\\(foo@nowhere\\\\.gov\\\\|foo@localhost\\\\|foo-redist@home\\\\)\"
	   - \"bugs-foo\" - \"rambling-foo\" \"mail.foo\"))
   \"mail.others\")

\(fn &optional GROUPS NO-CROSSPOST CATCH-ALL)" nil nil)

;;;***

;;;### (autoloads (gnus-button-reply gnus-button-mailto gnus-msg-mail)
;;;;;;  "gnus-msg" "gnus/lisp/gnus-msg.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-msg.el

(autoload 'gnus-msg-mail "gnus-msg" "\
Start editing a mail message to be sent.
Like `message-mail', but with Gnus paraphernalia, particularly the
Gcc: header for archiving purposes.
If Gnus isn't running, a plain `message-mail' setup is used
instead.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-ACTION YANK-ACTION SEND-ACTIONS RETURN-ACTION)" t nil)

(autoload 'gnus-button-mailto "gnus-msg" "\
Mail to ADDRESS.

\(fn ADDRESS)" nil nil)

(autoload 'gnus-button-reply "gnus-msg" "\
Like `message-reply'.

\(fn &optional TO-ADDRESS WIDE)" t nil)

(define-mail-user-agent 'gnus-user-agent 'gnus-msg-mail 'message-send-and-exit 'message-kill-buffer 'message-send-hook)

;;;***

;;;### (autoloads (gnus-notifications) "gnus-notifications" "gnus/lisp/gnus-notifications.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-notifications.el

(autoload 'gnus-notifications "gnus-notifications" "\
Send a notification on new message.
This check for new messages that are in group with a level lower
or equal to `gnus-notifications-minimum-level' and send a
notification using `notifications-notify' for it.

This is typically a function to add in
`gnus-after-getting-new-news-hook'

\(fn)" nil nil)

;;;***

;;;### (autoloads (gnus-treat-newsgroups-picon gnus-treat-mail-picon
;;;;;;  gnus-treat-from-picon) "gnus-picon" "gnus/lisp/gnus-picon.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-picon.el

(autoload 'gnus-treat-from-picon "gnus-picon" "\
Display picons in the From header.
If picons are already displayed, remove them.

\(fn)" t nil)

(autoload 'gnus-treat-mail-picon "gnus-picon" "\
Display picons in the Cc and To headers.
If picons are already displayed, remove them.

\(fn)" t nil)

(autoload 'gnus-treat-newsgroups-picon "gnus-picon" "\
Display picons in the Newsgroups and Followup-To headers.
If picons are already displayed, remove them.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-add-to-sorted-list gnus-sorted-nunion gnus-sorted-union
;;;;;;  gnus-sorted-nintersection gnus-sorted-range-intersection
;;;;;;  gnus-sorted-intersection gnus-intersection gnus-sorted-complement
;;;;;;  gnus-sorted-ndifference gnus-sorted-difference) "gnus-range"
;;;;;;  "gnus/lisp/gnus-range.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-range.el

(autoload 'gnus-sorted-difference "gnus-range" "\
Return a list of elements of LIST1 that do not appear in LIST2.
Both lists have to be sorted over <.
The tail of LIST1 is not copied.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-ndifference "gnus-range" "\
Return a list of elements of LIST1 that do not appear in LIST2.
Both lists have to be sorted over <.
LIST1 is modified.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-complement "gnus-range" "\
Return a list of elements that are in LIST1 or LIST2 but not both.
Both lists have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-intersection "gnus-range" "\
Not documented

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-intersection "gnus-range" "\
Return intersection of LIST1 and LIST2.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-range-intersection "gnus-range" "\
Return intersection of RANGE1 and RANGE2.
RANGE1 and RANGE2 have to be sorted over <.

\(fn RANGE1 RANGE2)" nil nil)

(defalias 'gnus-set-sorted-intersection 'gnus-sorted-nintersection)

(autoload 'gnus-sorted-nintersection "gnus-range" "\
Return intersection of LIST1 and LIST2 by modifying cdr pointers of LIST1.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-union "gnus-range" "\
Return union of LIST1 and LIST2.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-sorted-nunion "gnus-range" "\
Return union of LIST1 and LIST2 by modifying cdr pointers of LIST1.
LIST1 and LIST2 have to be sorted over <.

\(fn LIST1 LIST2)" nil nil)

(autoload 'gnus-add-to-sorted-list "gnus-range" "\
Add NUM into sorted LIST by side effect.

\(fn LIST NUM)" nil nil)

;;;***

;;;### (autoloads (gnus-registry-install-hooks gnus-registry-initialize)
;;;;;;  "gnus-registry" "gnus/lisp/gnus-registry.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-registry.el

(autoload 'gnus-registry-initialize "gnus-registry" "\
Initialize the Gnus registry.

\(fn)" t nil)

(autoload 'gnus-registry-install-hooks "gnus-registry" "\
Install the registry hooks.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-sieve-article-add-rule gnus-sieve-generate
;;;;;;  gnus-sieve-update) "gnus-sieve" "gnus/lisp/gnus-sieve.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-sieve.el

(autoload 'gnus-sieve-update "gnus-sieve" "\
Update the Sieve script in gnus-sieve-file, by replacing the region
between gnus-sieve-region-start and gnus-sieve-region-end with
\(gnus-sieve-script gnus-sieve-select-method gnus-sieve-crosspost), then
execute gnus-sieve-update-shell-command.
See the documentation for these variables and functions for details.

\(fn)" t nil)

(autoload 'gnus-sieve-generate "gnus-sieve" "\
Generate the Sieve script in gnus-sieve-file, by replacing the region
between gnus-sieve-region-start and gnus-sieve-region-end with
\(gnus-sieve-script gnus-sieve-select-method gnus-sieve-crosspost).
See the documentation for these variables and functions for details.

\(fn)" t nil)

(autoload 'gnus-sieve-article-add-rule "gnus-sieve" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-update-format) "gnus-spec" "gnus/lisp/gnus-spec.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-spec.el

(autoload 'gnus-update-format "gnus-spec" "\
Update the format specification near point.

\(fn VAR)" t nil)

;;;***

;;;### (autoloads (gnus-declare-backend) "gnus-start" "gnus/lisp/gnus-start.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-start.el

(autoload 'gnus-declare-backend "gnus-start" "\
Declare back end NAME with ABILITIES as a Gnus back end.

\(fn NAME &rest ABILITIES)" nil nil)

;;;***

;;;### (autoloads (gnus-summary-bookmark-jump) "gnus-sum" "gnus/lisp/gnus-sum.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-sum.el

(autoload 'gnus-summary-bookmark-jump "gnus-sum" "\
Handler function for record returned by `gnus-summary-bookmark-make-record'.
BOOKMARK is a bookmark name or a bookmark record.

\(fn BOOKMARK)" nil nil)

;;;***

;;;### (autoloads (gnus-sync-install-hooks gnus-sync-initialize)
;;;;;;  "gnus-sync" "gnus/lisp/gnus-sync.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-sync.el

(autoload 'gnus-sync-initialize "gnus-sync" "\
Initialize the Gnus sync facility.

\(fn)" t nil)

(autoload 'gnus-sync-install-hooks "gnus-sync" "\
Install the sync hooks.

\(fn)" t nil)

;;;***

;;;### (autoloads (gnus-add-configuration) "gnus-win" "gnus/lisp/gnus-win.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/gnus-win.el

(autoload 'gnus-add-configuration "gnus-win" "\
Add the window configuration CONF to `gnus-buffer-configuration'.

\(fn CONF)" nil nil)

;;;***

;;;### (autoloads (gravatar-retrieve-synchronously gravatar-retrieve)
;;;;;;  "gravatar" "gnus/lisp/gravatar.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/gravatar.el

(autoload 'gravatar-retrieve "gravatar" "\
Retrieve MAIL-ADDRESS gravatar and call CB on retrieval.
You can provide a list of argument to pass to CB in CBARGS.

\(fn MAIL-ADDRESS CB &optional CBARGS)" nil nil)

(autoload 'gravatar-retrieve-synchronously "gravatar" "\
Retrieve MAIL-ADDRESS gravatar and returns it.

\(fn MAIL-ADDRESS)" nil nil)

;;;***

;;;### (autoloads (mail-check-payment mail-add-payment-async mail-add-payment
;;;;;;  hashcash-verify-payment hashcash-insert-payment-async hashcash-insert-payment)
;;;;;;  "hashcash" "gnus/lisp/hashcash.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/hashcash.el

(autoload 'hashcash-insert-payment "hashcash" "\
Insert X-Payment and X-Hashcash headers with a payment for ARG

\(fn ARG)" t nil)

(autoload 'hashcash-insert-payment-async "hashcash" "\
Insert X-Payment and X-Hashcash headers with a payment for ARG
Only start calculation.  Results are inserted when ready.

\(fn ARG)" t nil)

(autoload 'hashcash-verify-payment "hashcash" "\
Verify a hashcash payment

\(fn TOKEN &optional RESOURCE AMOUNT)" nil nil)

(autoload 'mail-add-payment "hashcash" "\
Add X-Payment: and X-Hashcash: headers with a hashcash payment
for each recipient address.  Prefix arg sets default payment temporarily.
Set ASYNC to t to start asynchronous calculation.  (See
`mail-add-payment-async').

\(fn &optional ARG ASYNC)" t nil)

(autoload 'mail-add-payment-async "hashcash" "\
Add X-Payment: and X-Hashcash: headers with a hashcash payment
for each recipient address.  Prefix arg sets default payment temporarily.
Calculation is asynchronous.

\(fn &optional ARG)" t nil)

(autoload 'mail-check-payment "hashcash" "\
Look for a valid X-Payment: or X-Hashcash: header.
Prefix arg sets default accept amount temporarily.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-align-imports) "haskell-align-imports"
;;;;;;  "haskell-mode/haskell-align-imports.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-c-mode) "haskell-c" "haskell-mode/haskell-c.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-c.el

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-c-mode))

(autoload 'haskell-c-mode "haskell-c" "\
Major mode for Haskell FFI files.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-cabal-visit-file haskell-cabal-get-dir
;;;;;;  haskell-cabal-mode) "haskell-cabal" "haskell-mode/haskell-cabal.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn)" nil nil)

(autoload 'haskell-cabal-visit-file "haskell-cabal" "\
Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

\(fn OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads (haskell-compile) "haskell-compile" "haskell-mode/haskell-compile.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-compile.el

(autoload 'haskell-compile "haskell-compile" "\
Compile the Haskell program including the current buffer.
Tries to locate the next cabal description in current or parent
folders via `haskell-cabal-find-dir' and if found, invoke
`haskell-compile-cabal-build-command' from the cabal package root
folder. If no cabal package could be detected,
`haskell-compile-command' is used instead.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), `haskell-compile' prompts for custom compile
command.

If EDIT-COMMAND contains the negative prefix argument `-',
`haskell-compile' calls the alternative command defined in
`haskell-compile-cabal-build-alt-command' if a cabal package was
detected.

`haskell-compile' uses `haskell-compilation-mode' which is
derived from `compilation-mode'. See Info
node `(haskell-mode)compilation' for more details.

\(fn &optional EDIT-COMMAND)" t nil)

;;;***

;;;### (autoloads (haskell-decl-scan-mode turn-on-haskell-decl-scan
;;;;;;  haskell-ds-create-imenu-index) "haskell-decl-scan" "haskell-mode/haskell-decl-scan.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-decl-scan.el

(autoload 'haskell-ds-create-imenu-index "haskell-decl-scan" "\
Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

\(fn)" nil nil)

(autoload 'turn-on-haskell-decl-scan "haskell-decl-scan" "\
Unconditionally activate `haskell-decl-scan-mode'.

\(fn)" t nil)

(autoload 'haskell-decl-scan-mode "haskell-decl-scan" "\
Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-doc-show-type haskell-doc-current-info
;;;;;;  haskell-doc-mode) "haskell-doc" "haskell-mode/haskell-doc.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-doc.el

(autoload 'haskell-doc-mode "haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(defalias 'turn-on-haskell-doc 'haskell-doc-mode)

(autoload 'haskell-doc-current-info "haskell-doc" "\
Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

\(fn)" nil nil)

(autoload 'haskell-doc-show-type "haskell-doc" "\
Show the type of the function near point.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads (haskell-font-lock-choose-keywords) "haskell-font-lock"
;;;;;;  "haskell-mode/haskell-font-lock.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-font-lock.el

(autoload 'haskell-font-lock-choose-keywords "haskell-font-lock" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-indent-mode turn-on-haskell-indent) "haskell-indent"
;;;;;;  "haskell-mode/haskell-indent.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-indent.el

(autoload 'turn-on-haskell-indent "haskell-indent" "\
Turn on ``intelligent'' Haskell indentation mode.

\(fn)" nil nil)

(autoload 'haskell-indent-mode "haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (turn-on-haskell-indentation haskell-indentation-mode)
;;;;;;  "haskell-indentation" "haskell-mode/haskell-indentation.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-indentation.el

(autoload 'haskell-indentation-mode "haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-indentation "haskell-indentation" "\
Turn on the haskell-indentation minor mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-interactive-mode-reset-error haskell-interactive-mode-echo
;;;;;;  haskell-interactive-switch haskell-interactive-bring haskell-interactive-mode)
;;;;;;  "haskell-interactive-mode" "haskell-mode/haskell-interactive-mode.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-interactive-mode.el

(autoload 'haskell-interactive-mode "haskell-interactive-mode" "\
Interactive mode for Haskell.

See Info node `(haskell-mode)haskell-interactive-mode' for more
information.

Key bindings:
\\{haskell-interactive-mode-map}

\(fn)" t nil)

(autoload 'haskell-interactive-bring "haskell-interactive-mode" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-switch "haskell-interactive-mode" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE &optional MODE)" nil nil)

(autoload 'haskell-interactive-mode-reset-error "haskell-interactive-mode" "\
Reset the error cursor position.

\(fn SESSION)" t nil)

;;;***

;;;### (autoloads (haskell-menu) "haskell-menu" "haskell-mode/haskell-menu.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-menu.el

(autoload 'haskell-menu "haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-hayoo haskell-hoogle literate-haskell-mode
;;;;;;  haskell-mode haskell-customize haskell-mode-view-news haskell-version)
;;;;;;  "haskell-mode" "haskell-mode/haskell-mode.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-mode.el

(autoload 'haskell-version "haskell-mode" "\
Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.
When FULL is non-nil, use a verbose version string.
When MESSAGE is non-nil, display a message with the version.

\(fn &optional HERE)" t nil)

(autoload 'haskell-mode-view-news "haskell-mode" "\
Display information on recent changes to haskell-mode.

\(fn)" t nil)

(autoload 'haskell-customize "haskell-mode" "\
Browse the haskell customize sub-tree.
This calls 'customize-browse' with haskell as argument and makes
sure all haskell customize definitions have been loaded.

\(fn)" t nil)

(defvar haskell-mode-map (let ((map (make-sparse-keymap))) (define-key map [24 4] 'inferior-haskell-send-decl) (define-key map [3 26] 'switch-to-haskell) (define-key map [3 12] 'inferior-haskell-load-file) (define-key map [3 2] 'switch-to-haskell) (define-key map (kbd "C-c C-t") 'inferior-haskell-type) (define-key map (kbd "C-c C-i") 'inferior-haskell-info) (define-key map (kbd "C-c M-.") 'inferior-haskell-find-definition) (define-key map (kbd "C-c C-d") 'inferior-haskell-find-haddock) (define-key map [3 22] 'haskell-check) (define-key map (kbd "C-c C-.") 'haskell-mode-format-imports) (define-key map [remap delete-indentation] 'haskell-delete-indentation) map) "\
Keymap used in Haskell mode.")

(autoload 'haskell-mode "haskell-mode" "\
Major mode for editing Haskell programs.

See also Info node `(haskell-mode)Getting Started' for more
information about this mode.

\\<haskell-mode-map>
Literate scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook';
see documentation for that variable for more details.

\(fn)" t nil)

(autoload 'literate-haskell-mode "haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)
(add-to-list 'auto-mode-alist        '("\\.\\(?:[gh]s\\|hi\\)\\'" . haskell-mode))
(add-to-list 'auto-mode-alist        '("\\.l[gh]s\\'" . literate-haskell-mode))
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(autoload 'haskell-hoogle "haskell-mode" "\
Do a Hoogle search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'haskell-hayoo "haskell-mode" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads (haskell-move-nested-left haskell-move-nested-right
;;;;;;  haskell-move-nested) "haskell-move-nested" "haskell-mode/haskell-move-nested.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-move-nested" "\
Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" nil nil)

(autoload 'haskell-move-nested-right "haskell-move-nested" "\
Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

(autoload 'haskell-move-nested-left "haskell-move-nested" "\
Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

;;;***

;;;### (autoloads (haskell-navigate-imports-return haskell-navigate-imports-go
;;;;;;  haskell-navigate-imports) "haskell-navigate-imports" "haskell-mode/haskell-navigate-imports.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-navigate-imports" "\
Go to the first line of a list of consequtive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-process haskell-process-start haskell-process-cabal
;;;;;;  haskell-process-cabal-build haskell-process-load-or-reload
;;;;;;  haskell-process-reload-file haskell-process-load-file haskell-process-do-info
;;;;;;  haskell-process-do-type haskell-process-generate-tags) "haskell-process"
;;;;;;  "haskell-mode/haskell-process.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-process.el

(autoload 'haskell-process-generate-tags "haskell-process" "\
Regenerate the TAGS table.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

(autoload 'haskell-process-do-type "haskell-process" "\
Print the type of the given expression.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-process-do-info "haskell-process" "\
Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

\(fn &optional PROMPT-VALUE)" t nil)

(autoload 'haskell-process-load-file "haskell-process" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell-process" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-load-or-reload "haskell-process" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell-process" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell-process" "\
Prompts for a Cabal command to run.

\(fn)" t nil)

(autoload 'haskell-process-start "haskell-process" "\
Start the inferior Haskell process.

\(fn SESSION)" nil nil)

(autoload 'haskell-process "haskell-process" "\
Get the current process from the current session.

\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-session-process haskell-session haskell-session-maybe
;;;;;;  haskell-session-installed-modules haskell-session-all-modules)
;;;;;;  "haskell-session" "haskell-mode/haskell-session.el" (21233
;;;;;;  11601))
;;; Generated autoloads from haskell-mode/haskell-session.el

(autoload 'haskell-session-all-modules "haskell-session" "\
Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-installed-modules "haskell-session" "\
Get the modules installed in the current package set.
If DONTCREATE is non-nil don't create a new session.

\(fn &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-maybe "haskell-session" "\
Maybe get the Haskell session, return nil if there isn't one.

\(fn)" nil nil)

(autoload 'haskell-session "haskell-session" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads (haskell-show-parse haskell-show-parse-and-insert
;;;;;;  haskell-show-replace) "haskell-show" "haskell-mode/haskell-show.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-show.el

(autoload 'haskell-show-replace "haskell-show" "\
Replace the given region containing a Show value with a pretty
  printed collapsible version.

\(fn START END)" nil nil)

(autoload 'haskell-show-parse-and-insert "haskell-show" "\
Parse a `string' containing a Show instance value and insert
  it pretty printed into the current buffer.

\(fn GIVEN)" nil nil)

(autoload 'haskell-show-parse "haskell-show" "\
Parse the given input into a tree.

\(fn GIVEN)" nil nil)

;;;***

;;;### (autoloads (turn-on-haskell-simple-indent haskell-simple-indent-mode)
;;;;;;  "haskell-simple-indent" "haskell-mode/haskell-simple-indent.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-simple-indent.el

(autoload 'haskell-simple-indent-mode "haskell-simple-indent" "\
Simple Haskell indentation mode that uses simple heuristic.
In this minor mode, `indent-for-tab-command' (bound to <tab> by
default) will move the cursor to the next indent point in the
previous nonblank line, whereas `haskell-simple-indent-backtab'
\(bound to <backtab> by default) will move the cursor the
previous indent point.  An indent point is a non-whitespace
character following whitespace.

Runs `haskell-simple-indent-hook' on activation.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-simple-indent "haskell-simple-indent" "\
Turn on function `haskell-simple-indent-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-sort-imports) "haskell-sort-imports" "haskell-mode/haskell-sort-imports.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-sort-imports" "\
Sort the import list at the point.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-is-prefix-of haskell-string-take haskell-trim)
;;;;;;  "haskell-string" "haskell-mode/haskell-string.el" (21233
;;;;;;  11601))
;;; Generated autoloads from haskell-mode/haskell-string.el

(autoload 'haskell-trim "haskell-string" "\
Not documented

\(fn STRING)" nil nil)

(autoload 'haskell-string-take "haskell-string" "\
Take n chars from string.

\(fn STRING N)" nil nil)

(autoload 'haskell-is-prefix-of "haskell-string" "\
Is x string a prefix of y string?

\(fn X Y)" nil nil)

;;;***

;;;### (autoloads (turn-on-haskell-unicode-input-method) "haskell-unicode-input-method"
;;;;;;  "haskell-mode/haskell-unicode-input-method.el" (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-unicode-input-method.el

(autoload 'turn-on-haskell-unicode-input-method "haskell-unicode-input-method" "\
Set input method `haskell-unicode'.
See Info node `Unicode(haskell-mode)' for more details.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-yas-complete) "haskell-yas" "haskell-mode/haskell-yas.el"
;;;;;;  (21233 11601))
;;; Generated autoloads from haskell-mode/haskell-yas.el

(autoload 'haskell-yas-complete "haskell-yas" "\
Not documented

\(fn &rest ARGS)" nil nil)

;;;***

;;;### (autoloads (html2text) "html2text" "gnus/lisp/html2text.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/html2text.el

(autoload 'html2text "html2text" "\
Convert HTML to plain text in the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (inferior-haskell-find-haddock inferior-haskell-find-definition
;;;;;;  inferior-haskell-info inferior-haskell-kind inferior-haskell-type
;;;;;;  inferior-haskell-send-decl inferior-haskell-load-and-run
;;;;;;  inferior-haskell-load-file switch-to-haskell) "inf-haskell"
;;;;;;  "haskell-mode/inf-haskell.el" (21233 11601))
;;; Generated autoloads from haskell-mode/inf-haskell.el

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn &optional ARG)" t nil)

(autoload 'inferior-haskell-load-file "inf-haskell" "\
Pass the current buffer's file to the inferior haskell process.
If prefix arg \\[universal-argument] is given, just reload the previous file.

\(fn &optional RELOAD)" t nil)

(autoload 'inferior-haskell-load-and-run "inf-haskell" "\
Pass the current buffer's file to haskell and then run a COMMAND.

\(fn COMMAND)" t nil)

(autoload 'inferior-haskell-send-decl "inf-haskell" "\
Send current declaration to inferior-haskell process.

\(fn)" t nil)

(autoload 'inferior-haskell-type "inf-haskell" "\
Query the haskell process for the type of the given expression.
If optional argument `insert-value' is non-nil, insert the type above point
in the buffer.  This can be done interactively with the \\[universal-argument] prefix.
The returned info is cached for reuse by `haskell-doc-mode'.

\(fn EXPR &optional INSERT-VALUE)" t nil)

(autoload 'inferior-haskell-kind "inf-haskell" "\
Query the haskell process for the kind of the given expression.

\(fn TYPE)" t nil)

(autoload 'inferior-haskell-info "inf-haskell" "\
Query the haskell process for the info of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-definition "inf-haskell" "\
Attempt to locate and jump to the definition of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-haddock "inf-haskell" "\
Find and open the Haddock documentation of SYM.
Make sure to load the file into GHCi or Hugs first by using C-c C-l.
Only works for functions in a package installed with ghc-pkg, or
whatever the value of `haskell-package-manager-name' is.

This function needs to find which package a given module belongs
to.  In order to do this, it computes a module-to-package lookup
alist, which is expensive to compute (it takes upwards of five
seconds with more than about thirty installed packages).  As a
result, we cache it across sessions using the cache file
referenced by `inferior-haskell-module-alist-file'. We test to
see if this is newer than `haskell-package-conf-file' every time
we load it.

\(fn SYM)" t nil)

;;;***

;;;### (autoloads (message-unbold-region message-bold-region message-news-other-frame
;;;;;;  message-news-other-window message-mail-other-frame message-mail-other-window
;;;;;;  message-bounce message-resend message-insinuate-rmail message-forward-rmail-make-body
;;;;;;  message-forward-make-body message-forward message-recover
;;;;;;  message-supersede message-cancel-news message-followup message-wide-reply
;;;;;;  message-reply message-news message-mail message-mode) "message"
;;;;;;  "gnus/lisp/message.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/message.el

(define-mail-user-agent 'message-user-agent 'message-mail 'message-send-and-exit 'message-kill-buffer 'message-send-hook)

(autoload 'message-mode "message" "\
Major mode for editing mail and news to be sent.
Like Text Mode but with these additional commands:\\<message-mode-map>
C-c C-s  `message-send' (send the message)  C-c C-c  `message-send-and-exit'
C-c C-d  Postpone sending the message       C-c C-k  Kill the message
C-c C-f  move to a header field (and create it if there isn't):
	 C-c C-f C-t  move to To	C-c C-f C-s  move to Subject
	 C-c C-f C-c  move to Cc	C-c C-f C-b  move to Bcc
	 C-c C-f C-w  move to Fcc	C-c C-f C-r  move to Reply-To
	 C-c C-f C-u  move to Summary	C-c C-f C-n  move to Newsgroups
	 C-c C-f C-k  move to Keywords	C-c C-f C-d  move to Distribution
	 C-c C-f C-o  move to From (\"Originator\")
	 C-c C-f C-f  move to Followup-To
	 C-c C-f C-m  move to Mail-Followup-To
	 C-c C-f C-e  move to Expires
	 C-c C-f C-i  cycle through Importance values
	 C-c C-f s    change subject and append \"(was: <Old Subject>)\"
	 C-c C-f x    crossposting with FollowUp-To header and note in body
	 C-c C-f t    replace To: header with contents of Cc: or Bcc:
	 C-c C-f a    Insert X-No-Archive: header and a note in the body
C-c C-t  `message-insert-to' (add a To header to a news followup)
C-c C-l  `message-to-list-only' (removes all but list address in to/cc)
C-c C-n  `message-insert-newsgroups' (add a Newsgroup header to a news reply)
C-c C-b  `message-goto-body' (move to beginning of message text).
C-c C-i  `message-goto-signature' (move to the beginning of the signature).
C-c C-w  `message-insert-signature' (insert `message-signature-file' file).
C-c C-y  `message-yank-original' (insert current message, if any).
C-c C-q  `message-fill-yanked-message' (fill what was yanked).
C-c C-e  `message-elide-region' (elide the text between point and mark).
C-c C-v  `message-delete-not-region' (remove the text outside the region).
C-c C-z  `message-kill-to-signature' (kill the text up to the signature).
C-c C-r  `message-caesar-buffer-body' (rot13 the message body).
C-c C-a  `mml-attach-file' (attach a file as MIME).
C-c C-u  `message-insert-or-toggle-importance'  (insert or cycle importance).
C-c M-n  `message-insert-disposition-notification-to'  (request receipt).
C-c M-m  `message-mark-inserted-region' (mark region with enclosing tags).
C-c M-f  `message-mark-insert-file' (insert file marked with enclosing tags).
M-RET    `message-newline-and-reformat' (break the line and reformat).

\(fn)" t nil)

(autoload 'message-mail "message" "\
Start editing a mail message to be sent.
OTHER-HEADERS is an alist of header/value pairs.  CONTINUE says whether
to continue editing a message already being composed.  SWITCH-FUNCTION
is a function used to switch to and display the mail buffer.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS RETURN-ACTION &rest IGNORED)" t nil)

(autoload 'message-news "message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-reply "message" "\
Start editing a reply to the article in the current buffer.

\(fn &optional TO-ADDRESS WIDE SWITCH-FUNCTION)" t nil)

(autoload 'message-wide-reply "message" "\
Make a \"wide\" reply to the message in the current buffer.

\(fn &optional TO-ADDRESS)" t nil)

(autoload 'message-followup "message" "\
Follow up to the message in the current buffer.
If TO-NEWSGROUPS, use that as the new Newsgroups line.

\(fn &optional TO-NEWSGROUPS)" t nil)

(autoload 'message-cancel-news "message" "\
Cancel an article you posted.
If ARG, allow editing of the cancellation message.

\(fn &optional ARG)" t nil)

(autoload 'message-supersede "message" "\
Start composing a message to supersede the current message.
This is done simply by taking the old article and adding a Supersedes
header line with the old Message-ID.

\(fn)" t nil)

(autoload 'message-recover "message" "\
Reread contents of current buffer from its last auto-save file.

\(fn)" t nil)

(autoload 'message-forward "message" "\
Forward the current message via mail.
Optional NEWS will use news to forward instead of mail.
Optional DIGEST will use digest to forward.

\(fn &optional NEWS DIGEST)" t nil)

(autoload 'message-forward-make-body "message" "\
Not documented

\(fn FORWARD-BUFFER &optional DIGEST)" nil nil)

(autoload 'message-forward-rmail-make-body "message" "\
Not documented

\(fn FORWARD-BUFFER)" nil nil)

(autoload 'message-insinuate-rmail "message" "\
Let RMAIL use message to forward.

\(fn)" t nil)

(autoload 'message-resend "message" "\
Resend the current article to ADDRESS.

\(fn ADDRESS)" t nil)

(autoload 'message-bounce "message" "\
Re-mail the current message.
This only makes sense if the current message is a bounce message that
contains some mail you have written which has been bounced back to
you.

\(fn)" t nil)

(autoload 'message-mail-other-window "message" "\
Like `message-mail' command, but display mail buffer in another window.

\(fn &optional TO SUBJECT)" t nil)

(autoload 'message-mail-other-frame "message" "\
Like `message-mail' command, but display mail buffer in another frame.

\(fn &optional TO SUBJECT)" t nil)

(autoload 'message-news-other-window "message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-news-other-frame "message" "\
Start editing a news article to be sent.

\(fn &optional NEWSGROUPS SUBJECT)" t nil)

(autoload 'message-bold-region "message" "\
Bold all nonblank characters in the region.
Works by overstriking characters.
Called from program, takes two arguments START and END
which specify the range to operate on.

\(fn START END)" t nil)

(autoload 'message-unbold-region "message" "\
Remove all boldness (overstruck characters) in the region.
Called from program, takes two arguments START and END
which specify the range to operate on.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (mew-user-agent-compose mew-send mew) "mew" "mew/mew.el"
;;;;;;  (21267 28336))
;;; Generated autoloads from mew/mew.el

(autoload 'mew "mew" "\
Execute Mew first unless Mew is running. And retrieve arrived
messages or just visit to the default folder.

'proto' is determined by 'mew-proto' and 'mew-case'.

If 'proto' is '+' (ie a local folder), a mailbox is determined
according to 'mew-mailbox-type'. Otherwise (ie a remote folder), an
appropriate protocol to retrieve messages is chosen according to
'proto'.

If 'mew-auto-get' is 't', arrived messages are asynchronously fetched
and listed up in Summary mode.

'mew-auto-get' is 'nil', just visit to the folder determined by
'proto'.

When executed with '\\[universal-argument]', 'mew-auto-get' is
considered reversed.

\(fn &optional ARG)" t nil)

(autoload 'mew-send "mew" "\
Execute Mew then prepare a draft. This may be used as library
function.

\(fn &optional TO CC SUBJECT)" t nil)

(autoload 'mew-user-agent-compose "mew" "\
Set up message composition draft with Mew.
This is 'mail-user-agent' entry point to Mew.

The optional arguments TO and SUBJECT specify recipients and the
initial Subject field, respectively.

OTHER-HEADERS is an alist specifying additional
header fields.  Elements look like (HEADER . VALUE) where both
HEADER and VALUE are strings.

A Draft buffer is prepared according to SWITCH-FUNCTION.

CONTINUE, YANK-ACTION and SEND-ACTIONS are ignored.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS &rest DUMMY)" nil nil)

;;;***

;;;### (autoloads (mm-default-file-encoding) "mm-encode" "gnus/lisp/mm-encode.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/mm-encode.el

(autoload 'mm-default-file-encoding "mm-encode" "\
Return a default encoding for FILE.

\(fn FILE)" nil nil)

;;;***

;;;### (autoloads (mm-inline-external-body mm-extern-cache-contents)
;;;;;;  "mm-extern" "gnus/lisp/mm-extern.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/mm-extern.el

(autoload 'mm-extern-cache-contents "mm-extern" "\
Put the external-body part of HANDLE into its cache.

\(fn HANDLE)" nil nil)

(autoload 'mm-inline-external-body "mm-extern" "\
Show the external-body part of HANDLE.
This function replaces the buffer of HANDLE with a buffer contains
the entire message.
If NO-DISPLAY is nil, display it. Otherwise, do nothing after replacing.

\(fn HANDLE &optional NO-DISPLAY)" nil nil)

;;;***

;;;### (autoloads (mm-inline-partial) "mm-partial" "gnus/lisp/mm-partial.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/mm-partial.el

(autoload 'mm-inline-partial "mm-partial" "\
Show the partial part of HANDLE.
This function replaces the buffer of HANDLE with a buffer contains
the entire message.
If NO-DISPLAY is nil, display it. Otherwise, do nothing after replacing.

\(fn HANDLE &optional NO-DISPLAY)" nil nil)

;;;***

;;;### (autoloads (mm-url-insert-file-contents-external mm-url-insert-file-contents)
;;;;;;  "mm-url" "gnus/lisp/mm-url.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/mm-url.el

(autoload 'mm-url-insert-file-contents "mm-url" "\
Insert file contents of URL.
If `mm-url-use-external' is non-nil, use `mm-url-program'.

\(fn URL)" nil nil)

(autoload 'mm-url-insert-file-contents-external "mm-url" "\
Insert file contents of URL using `mm-url-program'.

\(fn URL)" nil nil)

;;;***

;;;### (autoloads (mm-uu-dissect-text-parts mm-uu-dissect) "mm-uu"
;;;;;;  "gnus/lisp/mm-uu.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/mm-uu.el

(autoload 'mm-uu-dissect "mm-uu" "\
Dissect the current buffer and return a list of uu handles.
The optional NOHEADER means there's no header in the buffer.
MIME-TYPE specifies a MIME type and parameters, which defaults to the
value of `mm-uu-text-plain-type'.

\(fn &optional NOHEADER MIME-TYPE)" nil nil)

(autoload 'mm-uu-dissect-text-parts "mm-uu" "\
Dissect text parts and put uu handles into HANDLE.
Assume text has been decoded if DECODED is non-nil.

\(fn HANDLE &optional DECODED)" nil nil)

;;;***

;;;### (autoloads (mml-attach-file mml-to-mime) "mml" "gnus/lisp/mml.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/mml.el

(autoload 'mml-to-mime "mml" "\
Translate the current buffer from MML to MIME.

\(fn)" nil nil)

(autoload 'mml-attach-file "mml" "\
Attach a file to the outgoing MIME message.
The file is not inserted or encoded until you send the message with
`\\[message-send-and-exit]' or `\\[message-send]' in Message mode,
or `\\[mail-send-and-exit]' or `\\[mail-send]' in Mail mode.

FILE is the name of the file to attach.  TYPE is its
content-type, a string of the form \"type/subtype\".  DESCRIPTION
is a one-line description of the attachment.  The DISPOSITION
specifies how the attachment is intended to be displayed.  It can
be either \"inline\" (displayed automatically within the message
body) or \"attachment\" (separate from the body).

\(fn FILE &optional TYPE DESCRIPTION DISPOSITION)" t nil)

;;;***

;;;### (autoloads (mml1991-sign mml1991-encrypt) "mml1991" "gnus/lisp/mml1991.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/mml1991.el

(autoload 'mml1991-encrypt "mml1991" "\
Not documented

\(fn CONT &optional SIGN)" nil nil)

(autoload 'mml1991-sign "mml1991" "\
Not documented

\(fn CONT)" nil nil)

;;;***

;;;### (autoloads (mml2015-self-encrypt mml2015-sign mml2015-encrypt
;;;;;;  mml2015-verify-test mml2015-verify mml2015-decrypt-test mml2015-decrypt)
;;;;;;  "mml2015" "gnus/lisp/mml2015.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/mml2015.el

(autoload 'mml2015-decrypt "mml2015" "\
Not documented

\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-decrypt-test "mml2015" "\
Not documented

\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-verify "mml2015" "\
Not documented

\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-verify-test "mml2015" "\
Not documented

\(fn HANDLE CTL)" nil nil)

(autoload 'mml2015-encrypt "mml2015" "\
Not documented

\(fn CONT &optional SIGN)" nil nil)

(autoload 'mml2015-sign "mml2015" "\
Not documented

\(fn CONT)" nil nil)

(autoload 'mml2015-self-encrypt "mml2015" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (netrc-credentials) "netrc" "gnus/lisp/netrc.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/netrc.el

(autoload 'netrc-credentials "netrc" "\
Return a user name/password pair.
Port specifications will be prioritized in the order they are
listed in the PORTS list.

\(fn MACHINE &rest PORTS)" nil nil)

;;;***

;;;### (autoloads (nndiary-generate-nov-databases) "nndiary" "gnus/lisp/nndiary.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/nndiary.el

(autoload 'nndiary-generate-nov-databases "nndiary" "\
Generate NOV databases in all nndiary directories.

\(fn &optional SERVER)" t nil)

;;;***

;;;### (autoloads (nndoc-add-type) "nndoc" "gnus/lisp/nndoc.el" (21233
;;;;;;  11096))
;;; Generated autoloads from gnus/lisp/nndoc.el

(autoload 'nndoc-add-type "nndoc" "\
Add document DEFINITION to the list of nndoc document definitions.
If POSITION is nil or `last', the definition will be added
as the last checked definition, if t or `first', add as the
first definition, and if any other symbol, add after that
symbol in the alist.

\(fn DEFINITION &optional POSITION)" nil nil)

;;;***

;;;### (autoloads (nnfolder-generate-active-file) "nnfolder" "gnus/lisp/nnfolder.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/nnfolder.el

(autoload 'nnfolder-generate-active-file "nnfolder" "\
Look for mbox folders in the nnfolder directory and make them into groups.
This command does not work if you use short group names.

\(fn)" t nil)

;;;***

;;;### (autoloads (nnml-generate-nov-databases) "nnml" "gnus/lisp/nnml.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/nnml.el

(autoload 'nnml-generate-nov-databases "nnml" "\
Generate NOV databases in all nnml directories.

\(fn &optional SERVER)" t nil)

;;;***

;;;### (autoloads (parse-time-string) "parse-time" "gnus/lisp/parse-time.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/parse-time.el
(put 'parse-time-rules 'risky-local-variable t)

(autoload 'parse-time-string "parse-time" "\
Parse the time-string STRING into (SEC MIN HOUR DAY MON YEAR DOW DST TZ).
The values are identical to those of `decode-time', but any values that are
unknown are returned as nil.

\(fn STRING)" nil nil)

;;;***

;;;### (autoloads (password-in-cache-p password-cache-expiry password-cache)
;;;;;;  "password-cache" "gnus/lisp/password-cache.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/password-cache.el

(defvar password-cache t "\
Whether to cache passwords.")

(custom-autoload 'password-cache "password-cache" t)

(defvar password-cache-expiry 16 "\
How many seconds passwords are cached, or nil to disable expiring.
Whether passwords are cached at all is controlled by `password-cache'.")

(custom-autoload 'password-cache-expiry "password-cache" t)

(autoload 'password-in-cache-p "password-cache" "\
Check if KEY is in the cache.

\(fn KEY)" nil nil)

;;;***

;;;### (autoloads (plstore-mode plstore-open) "plstore" "gnus/lisp/plstore.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/plstore.el

(autoload 'plstore-open "plstore" "\
Create a plstore instance associated with FILE.

\(fn FILE)" nil nil)

(autoload 'plstore-mode "plstore" "\
Major mode for editing PLSTORE files.

\(fn)" t nil)

;;;***

;;;### (autoloads (pop3-movemail) "pop3" "gnus/lisp/pop3.el" (21233
;;;;;;  11096))
;;; Generated autoloads from gnus/lisp/pop3.el

(autoload 'pop3-movemail "pop3" "\
Transfer contents of a maildrop to the specified FILE.
Use streaming commands.

\(fn FILE)" nil nil)

;;;***

;;;### (autoloads (open-protocol-stream) "proto-stream" "gnus/lisp/proto-stream.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/proto-stream.el

(autoload 'open-protocol-stream "proto-stream" "\
Open a network stream to HOST, possibly with encryption.
Normally, return a network process object; with a non-nil
:return-list parameter, return a list instead (see below).

The first four parameters, NAME, BUFFER, HOST, and SERVICE, have
the same meanings as in `open-network-stream'.  The remaining
PARAMETERS should be a sequence of keywords and values:

:type specifies the connection type, one of the following:
  nil or `network'
             -- Begin with an ordinary network connection, and if
                the parameters :success and :capability-command
                are also supplied, try to upgrade to an encrypted
                connection via STARTTLS.  Even if that
                fails (e.g. if HOST does not support TLS), retain
                an unencrypted connection.
  `plain'    -- An ordinary, unencrypted network connection.
  `starttls' -- Begin with an ordinary connection, and try
                upgrading via STARTTLS.  If that fails for any
                reason, drop the connection; in that case the
                returned object is a killed process.
  `tls'      -- A TLS connection.
  `ssl'      -- Equivalent to `tls'.
  `shell'    -- A shell connection.

:return-list specifies this function's return value.
  If omitted or nil, return a process object.  A non-nil means to
  return (PROC . PROPS), where PROC is a process object and PROPS
  is a plist of connection properties, with these keywords:
   :greeting -- the greeting returned by HOST (a string), or nil.
   :capabilities -- a string representing HOST's capabilities,
                    or nil if none could be found.
   :type -- the resulting connection type; `plain' (unencrypted)
            or `tls' (TLS-encrypted).

:end-of-command specifies a regexp matching the end of a command.
  If non-nil, it defaults to \"\\n\".

:end-of-capability specifies a regexp matching the end of the
  response to the command specified for :capability-command.
  It defaults to the regexp specified for :end-of-command.

:success specifies a regexp matching a message indicating a
  successful STARTTLS negotiation.  For instance, the default
  should be \"^3\" for an NNTP connection.

:capability-command specifies a command used to query the HOST
  for its capabilities.  For instance, for IMAP this should be
  \"1 CAPABILITY\\r\\n\".

:starttls-function specifies a function for handling STARTTLS.
  This function should take one parameter, the response to the
  capability command, and should return the command to switch on
  STARTTLS if the server supports STARTTLS, and nil otherwise.

\(fn NAME BUFFER HOST SERVICE &rest PARAMETERS)" nil nil)

;;;***

;;;### (autoloads (quoted-printable-decode-region) "qp" "gnus/lisp/qp.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/qp.el

(autoload 'quoted-printable-decode-region "qp" "\
Decode quoted-printable in the region between FROM and TO, per RFC 2045.
If CODING-SYSTEM is non-nil, decode bytes into characters with that
coding-system.

Interactively, you can supply the CODING-SYSTEM argument
with \\[universal-coding-system-argument].

The CODING-SYSTEM argument is a historical hangover and is deprecated.
QP encodes raw bytes and should be decoded into raw bytes.  Decoding
them into characters should be done separately.

\(fn FROM TO &optional CODING-SYSTEM)" t nil)

;;;***

;;;### (autoloads (gnus-score-mode) "score-mode" "gnus/lisp/score-mode.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/score-mode.el

(autoload 'gnus-score-mode "score-mode" "\
Mode for editing Gnus score files.
This mode is an extended emacs-lisp mode.

\\{gnus-score-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (sha1) "sha1" "gnus/lisp/sha1.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/sha1.el

(autoload 'sha1 "sha1" "\
Return the SHA1 (Secure Hash Algorithm) of an object.
OBJECT is either a string or a buffer.
Optional arguments BEG and END denote buffer positions for computing the
hash of a portion of OBJECT.
If BINARY is non-nil, return a string in binary form.

\(fn OBJECT &optional BEG END BINARY)" nil nil)

;;;***

;;;### (autoloads (sieve-upload-and-kill sieve-upload-and-bury sieve-upload
;;;;;;  sieve-manage) "sieve" "gnus/lisp/sieve.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/sieve.el

(autoload 'sieve-manage "sieve" "\
Not documented

\(fn SERVER &optional PORT)" t nil)

(autoload 'sieve-upload "sieve" "\
Not documented

\(fn &optional NAME)" t nil)

(autoload 'sieve-upload-and-bury "sieve" "\
Not documented

\(fn &optional NAME)" t nil)

(autoload 'sieve-upload-and-kill "sieve" "\
Not documented

\(fn &optional NAME)" t nil)

;;;***

;;;### (autoloads (sieve-mode) "sieve-mode" "gnus/lisp/sieve-mode.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/sieve-mode.el

(autoload 'sieve-mode "sieve-mode" "\
Major mode for editing Sieve code.
This is much like C mode except for the syntax of comments.  Its keymap
inherits from C mode's and it has the same variables for customizing
indentation.  It has its own abbrev table and its own syntax table.

Turning on Sieve mode runs `sieve-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (smiley-buffer smiley-region) "smiley" "gnus/lisp/smiley.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/smiley.el

(autoload 'smiley-region "smiley" "\
Replace in the region `smiley-regexp-alist' matches with corresponding images.
A list of images is returned.

\(fn START END)" t nil)

(autoload 'smiley-buffer "smiley" "\
Run `smiley-region' at the BUFFER, specified in the argument or
interactively.  If there's no argument, do it at the current buffer.

\(fn &optional BUFFER)" t nil)

;;;***

;;;### (autoloads nil "solarized-definitions" "color-theme-solarized/solarized-definitions.el"
;;;;;;  (21257 43447))
;;; Generated autoloads from color-theme-solarized/solarized-definitions.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads (spam-initialize) "spam" "gnus/lisp/spam.el" (21233
;;;;;;  11096))
;;; Generated autoloads from gnus/lisp/spam.el

(autoload 'spam-initialize "spam" "\
Install the spam.el hooks and do other initialization.
When SYMBOLS is given, set those variables to t.  This is so you
can call `spam-initialize' before you set spam-use-* variables on
explicitly, and matters only if you need the extra headers
installed through `spam-necessary-extra-headers'.

\(fn &rest SYMBOLS)" t nil)

;;;***

;;;### (autoloads (spam-report-deagentize spam-report-agentize spam-report-url-to-file
;;;;;;  spam-report-url-ping-mm-url spam-report-process-queue) "spam-report"
;;;;;;  "gnus/lisp/spam-report.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/spam-report.el

(autoload 'spam-report-process-queue "spam-report" "\
Report all queued requests from `spam-report-requests-file'.

If FILE is given, use it instead of `spam-report-requests-file'.
If KEEP is t, leave old requests in the file.  If KEEP is the
symbol `ask', query before flushing the queue file.

\(fn &optional FILE KEEP)" t nil)

(autoload 'spam-report-url-ping-mm-url "spam-report" "\
Ping a host through HTTP, addressing a specific GET resource. Use
the external program specified in `mm-url-program' to connect to
server.

\(fn HOST REPORT)" nil nil)

(autoload 'spam-report-url-to-file "spam-report" "\
Collect spam report requests in `spam-report-requests-file'.
Customize `spam-report-url-ping-function' to use this function.

\(fn HOST REPORT)" nil nil)

(autoload 'spam-report-agentize "spam-report" "\
Add spam-report support to the Agent.
Spam reports will be queued with \\[spam-report-url-to-file] when
the Agent is unplugged, and will be submitted in a batch when the
Agent is plugged.

\(fn)" t nil)

(autoload 'spam-report-deagentize "spam-report" "\
Remove spam-report support from the Agent.
Spam reports will be queued with the method used when
\\[spam-report-agentize] was run.

\(fn)" t nil)

;;;***

;;;### (autoloads (starttls-open-stream) "starttls" "gnus/lisp/starttls.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/starttls.el

(autoload 'starttls-open-stream "starttls" "\
Open a TLS connection for a port to a host.
Returns a subprocess object to represent the connection.
Input and output work as for subprocesses; `delete-process' closes it.
Args are NAME BUFFER HOST PORT.
NAME is name for process.  It is modified if necessary to make it unique.
BUFFER is the buffer (or `buffer-name') to associate with the process.
 Process output goes at end of that buffer, unless you specify
 an output stream or filter function to handle the output.
 BUFFER may be also nil, meaning that this process is not associated
 with any buffer
Third arg is name of the host to connect to, or its IP address.
Fourth arg PORT is an integer specifying a port to connect to.
If `starttls-use-gnutls' is nil, this may also be a service name, but
GnuTLS requires a port number.

\(fn NAME BUFFER HOST PORT)" nil nil)

;;;***

;;;### (autoloads (tabulated-list-mode) "tabulated-list" "tabulated-list/tabulated-list.el"
;;;;;;  (21233 10429))
;;; Generated autoloads from tabulated-list/tabulated-list.el

(autoload 'tabulated-list-mode "tabulated-list" "\
Generic major mode for browsing a list of items.
This mode is usually not used directly; instead, other major
modes are derived from it, using `define-derived-mode'.

In this major mode, the buffer is divided into multiple columns,
which are labelled using the header line.  Each non-empty line
belongs to one \"entry\", and the entries can be sorted according
to their column values.

An inheriting mode should usually do the following in their body:

 - Set `tabulated-list-format', specifying the column format.
 - Set `tabulated-list-revert-hook', if the buffer contents need
   to be specially recomputed prior to `revert-buffer'.
 - Maybe set a `tabulated-list-entries' function (see below).
 - Maybe set `tabulated-list-printer' (see below).
 - Maybe set `tabulated-list-padding'.
 - Call `tabulated-list-init-header' to initialize `header-line-format'
   according to `tabulated-list-format'.

An inheriting mode is usually accompanied by a \"list-FOO\"
command (e.g. `list-packages', `list-processes').  This command
creates or switches to a buffer and enables the major mode in
that buffer.  If `tabulated-list-entries' is not a function, the
command should initialize it to a list of entries for displaying.
Finally, it should call `tabulated-list-print'.

`tabulated-list-print' calls the printer function specified by
`tabulated-list-printer', once for each entry.  The default
printer is `tabulated-list-print-entry', but a mode that keeps
data in an ewoc may instead specify a printer function (e.g., one
that calls `ewoc-enter-last'), with `tabulated-list-print-entry'
as the ewoc pretty-printer.

\(fn)" t nil)

;;;***

;;;### (autoloads (format-seconds safe-date-to-time time-to-days
;;;;;;  time-to-day-in-year date-leap-year-p days-between date-to-day
;;;;;;  time-add time-subtract time-since days-to-time time-less-p
;;;;;;  seconds-to-time date-to-time) "time-date" "gnus/lisp/time-date.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/time-date.el

(autoload 'date-to-time "time-date" "\
Parse a string DATE that represents a date-time and return a time value.
If DATE lacks timezone information, GMT is assumed.

\(fn DATE)" nil nil)
(if (or (featurep 'emacs)
       (and (fboundp 'float-time)
            (subrp (symbol-function 'float-time))))
   (defalias 'time-to-seconds 'float-time)
 (autoload 'time-to-seconds "time-date"))

(autoload 'seconds-to-time "time-date" "\
Convert SECONDS (a floating point number) to a time value.

\(fn SECONDS)" nil nil)

(autoload 'time-less-p "time-date" "\
Return non-nil if time value T1 is earlier than time value T2.

\(fn T1 T2)" nil nil)

(autoload 'days-to-time "time-date" "\
Convert DAYS into a time value.

\(fn DAYS)" nil nil)

(autoload 'time-since "time-date" "\
Return the time elapsed since TIME.
TIME should be either a time value or a date-time string.

\(fn TIME)" nil nil)

(defalias 'subtract-time 'time-subtract)

(autoload 'time-subtract "time-date" "\
Subtract two time values, T1 minus T2.
Return the difference in the format of a time value.

\(fn T1 T2)" nil nil)

(autoload 'time-add "time-date" "\
Add two time values T1 and T2.  One should represent a time difference.

\(fn T1 T2)" nil nil)

(autoload 'date-to-day "time-date" "\
Return the number of days between year 1 and DATE.
DATE should be a date-time string.

\(fn DATE)" nil nil)

(autoload 'days-between "time-date" "\
Return the number of days between DATE1 and DATE2.
DATE1 and DATE2 should be date-time strings.

\(fn DATE1 DATE2)" nil nil)

(autoload 'date-leap-year-p "time-date" "\
Return t if YEAR is a leap year.

\(fn YEAR)" nil nil)

(autoload 'time-to-day-in-year "time-date" "\
Return the day number within the year corresponding to TIME.

\(fn TIME)" nil nil)

(autoload 'time-to-days "time-date" "\
The number of days between the Gregorian date 0001-12-31bce and TIME.
TIME should be a time value.
The Gregorian date Sunday, December 31, 1bce is imaginary.

\(fn TIME)" nil nil)

(autoload 'safe-date-to-time "time-date" "\
Parse a string DATE that represents a date-time and return a time value.
If DATE is malformed, return a time value of zeros.

\(fn DATE)" nil nil)

(autoload 'format-seconds "time-date" "\
Use format control STRING to format the number SECONDS.
The valid format specifiers are:
%y is the number of (365-day) years.
%d is the number of days.
%h is the number of hours.
%m is the number of minutes.
%s is the number of seconds.
%z is a non-printing control flag (see below).
%% is a literal \"%\".

Upper-case specifiers are followed by the unit-name (e.g. \"years\").
Lower-case specifiers return only the unit.

\"%\" may be followed by a number specifying a width, with an
optional leading \".\" for zero-padding.  For example, \"%.3Y\" will
return something of the form \"001 year\".

The \"%z\" specifier does not print anything.  When it is used, specifiers
must be given in order of decreasing size.  To the left of \"%z\", nothing
is output until the first non-zero unit is encountered.

This function does not work for SECONDS greater than `most-positive-fixnum'.

\(fn STRING SECONDS)" nil nil)

;;;***

;;;### (autoloads (utf7-encode) "utf7" "gnus/lisp/utf7.el" (21233
;;;;;;  11096))
;;; Generated autoloads from gnus/lisp/utf7.el

(autoload 'utf7-encode "utf7" "\
Encode UTF-7 STRING.  Use IMAP modification if FOR-IMAP is non-nil.

\(fn STRING &optional FOR-IMAP)" nil nil)

;;;***

;;;### (autoloads (uudecode-decode-region uudecode-decode-region-internal
;;;;;;  uudecode-decode-region-external) "uudecode" "gnus/lisp/uudecode.el"
;;;;;;  (21233 11096))
;;; Generated autoloads from gnus/lisp/uudecode.el

(autoload 'uudecode-decode-region-external "uudecode" "\
Uudecode region between START and END using external program.
If FILE-NAME is non-nil, save the result to FILE-NAME.  The program
used is specified by `uudecode-decoder-program'.

\(fn START END &optional FILE-NAME)" t nil)

(autoload 'uudecode-decode-region-internal "uudecode" "\
Uudecode region between START and END without using an external program.
If FILE-NAME is non-nil, save the result to FILE-NAME.

\(fn START END &optional FILE-NAME)" t nil)

(autoload 'uudecode-decode-region "uudecode" "\
Uudecode region between START and END.
If FILE-NAME is non-nil, save the result to FILE-NAME.

\(fn START END &optional FILE-NAME)" nil nil)

;;;***

;;;### (autoloads (yenc-extract-filename yenc-decode-region) "yenc"
;;;;;;  "gnus/lisp/yenc.el" (21233 11096))
;;; Generated autoloads from gnus/lisp/yenc.el

(autoload 'yenc-decode-region "yenc" "\
Yenc decode region between START and END using an internal decoder.

\(fn START END)" t nil)

(autoload 'yenc-extract-filename "yenc" "\
Extract file name from an yenc header.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("auto-complete+/auto-complete+.el" "color-theme-solarized/color-theme-solarized-pkg.el"
;;;;;;  "color-theme-solarized/solarized-dark-theme.el" "color-theme-solarized/solarized-light-theme.el"
;;;;;;  "cscope/cscope.el" "deferred/concurrent-sample.el" "deferred/concurrent.el"
;;;;;;  "deferred/deferred-samples.el" "deferred/deferred.el" "deferred/test-concurrent.el"
;;;;;;  "deferred/test-deferred.el" "e2wm/e2wm-config.el" "e2wm/e2wm-vcs.el"
;;;;;;  "e2wm/e2wm.el" "e2wm/test-e2wm-pst-class.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "ewb/ewb.el"
;;;;;;  "ghc-mod/elisp/ghc-command.el" "ghc-mod/elisp/ghc-comp.el"
;;;;;;  "ghc-mod/elisp/ghc-doc.el" "ghc-mod/elisp/ghc-flymake.el"
;;;;;;  "ghc-mod/elisp/ghc-func.el" "ghc-mod/elisp/ghc-indent.el"
;;;;;;  "ghc-mod/elisp/ghc-info.el" "ghc-mod/elisp/ghc-ins-mod.el"
;;;;;;  "ghc-mod/elisp/ghc-pkg.el" "git-emacs/git--test.el" "git-emacs/git-emacs-autoloads.el"
;;;;;;  "git-emacs/git-emacs.el" "git-emacs/git-global-keys.el" "git-emacs/git-log.el"
;;;;;;  "git-emacs/git-modeline.el" "git-emacs/git-status.el" "gnuplot-mode/dot.el"
;;;;;;  "gnuplot-mode/dotemacs.el" "gnuplot-mode/gnuplot-context.el"
;;;;;;  "gnuplot-mode/gnuplot-debug-context.el" "gnuplot-mode/gnuplot-gui.el"
;;;;;;  "gnuplot-mode/gnuplot-test-context.el" "gnus/lisp/compface.el"
;;;;;;  "gnus/lisp/dgnushack.el" "gnus/lisp/dns.el" "gnus/lisp/format-spec.el"
;;;;;;  "gnus/lisp/gnus-async.el" "gnus/lisp/gnus-bcklg.el" "gnus/lisp/gnus-cite.el"
;;;;;;  "gnus/lisp/gnus-cloud.el" "gnus/lisp/gnus-compat.el" "gnus/lisp/gnus-cus.el"
;;;;;;  "gnus/lisp/gnus-demon.el" "gnus/lisp/gnus-dup.el" "gnus/lisp/gnus-eform.el"
;;;;;;  "gnus/lisp/gnus-ems.el" "gnus/lisp/gnus-icalendar.el" "gnus/lisp/gnus-int.el"
;;;;;;  "gnus/lisp/gnus-load.el" "gnus/lisp/gnus-logic.el" "gnus/lisp/gnus-mh.el"
;;;;;;  "gnus/lisp/gnus-salt.el" "gnus/lisp/gnus-score.el" "gnus/lisp/gnus-srvr.el"
;;;;;;  "gnus/lisp/gnus-topic.el" "gnus/lisp/gnus-undo.el" "gnus/lisp/gnus-util.el"
;;;;;;  "gnus/lisp/gnus-uu.el" "gnus/lisp/gnus-vm.el" "gnus/lisp/gnus-xmas.el"
;;;;;;  "gnus/lisp/gssapi.el" "gnus/lisp/hex-util.el" "gnus/lisp/hmac-def.el"
;;;;;;  "gnus/lisp/hmac-md5.el" "gnus/lisp/ietf-drums.el" "gnus/lisp/legacy-gnus-agent.el"
;;;;;;  "gnus/lisp/lpath.el" "gnus/lisp/mail-parse.el" "gnus/lisp/mail-prsvr.el"
;;;;;;  "gnus/lisp/mail-source.el" "gnus/lisp/mailcap.el" "gnus/lisp/md4.el"
;;;;;;  "gnus/lisp/messagexmas.el" "gnus/lisp/messcompat.el" "gnus/lisp/mm-archive.el"
;;;;;;  "gnus/lisp/mm-bodies.el" "gnus/lisp/mm-decode.el" "gnus/lisp/mm-util.el"
;;;;;;  "gnus/lisp/mm-view.el" "gnus/lisp/mml-sec.el" "gnus/lisp/mml-smime.el"
;;;;;;  "gnus/lisp/nnagent.el" "gnus/lisp/nnbabyl.el" "gnus/lisp/nndir.el"
;;;;;;  "gnus/lisp/nndraft.el" "gnus/lisp/nneething.el" "gnus/lisp/nngateway.el"
;;;;;;  "gnus/lisp/nnheader.el" "gnus/lisp/nnheaderxm.el" "gnus/lisp/nnimap.el"
;;;;;;  "gnus/lisp/nnir.el" "gnus/lisp/nnmail.el" "gnus/lisp/nnmaildir.el"
;;;;;;  "gnus/lisp/nnmairix.el" "gnus/lisp/nnmbox.el" "gnus/lisp/nnmh.el"
;;;;;;  "gnus/lisp/nnnil.el" "gnus/lisp/nnoo.el" "gnus/lisp/nnregistry.el"
;;;;;;  "gnus/lisp/nnrss.el" "gnus/lisp/nnspool.el" "gnus/lisp/nntp.el"
;;;;;;  "gnus/lisp/nnvirtual.el" "gnus/lisp/nnweb.el" "gnus/lisp/ntlm.el"
;;;;;;  "gnus/lisp/registry.el" "gnus/lisp/rfc1843.el" "gnus/lisp/rfc2045.el"
;;;;;;  "gnus/lisp/rfc2047.el" "gnus/lisp/rfc2104.el" "gnus/lisp/rfc2231.el"
;;;;;;  "gnus/lisp/rtree.el" "gnus/lisp/sasl-cram.el" "gnus/lisp/sasl-digest.el"
;;;;;;  "gnus/lisp/sasl-ntlm.el" "gnus/lisp/sasl.el" "gnus/lisp/sieve-manage.el"
;;;;;;  "gnus/lisp/smime-ldap.el" "gnus/lisp/smime.el" "gnus/lisp/spam-stat.el"
;;;;;;  "gnus/lisp/spam-wash.el" "gnus/lisp/tls.el" "haskell-mode/haskell-bot.el"
;;;;;;  "haskell-mode/haskell-checkers.el" "haskell-mode/haskell-compat.el"
;;;;;;  "haskell-mode/haskell-mode-autoloads.el" "haskell-mode/haskell-package.el"
;;;;;;  "haskell-mode/haskell-presentation-mode.el" "haskell-mode/haskell-str.el"
;;;;;;  "haskell-mode/haskell-utils.el" "irc/irc.el" "mew/auxiliary.el"
;;;;;;  "mew/mew-addrbook.el" "mew/mew-attach.el" "mew/mew-auth.el"
;;;;;;  "mew/mew-blvs.el" "mew/mew-bq.el" "mew/mew-cache.el" "mew/mew-complete.el"
;;;;;;  "mew/mew-config.el" "mew/mew-const.el" "mew/mew-darwin.el"
;;;;;;  "mew/mew-decode.el" "mew/mew-demo.el" "mew/mew-draft.el"
;;;;;;  "mew/mew-edit.el" "mew/mew-encode.el" "mew/mew-env.el" "mew/mew-exec.el"
;;;;;;  "mew/mew-ext.el" "mew/mew-fib.el" "mew/mew-func.el" "mew/mew-gemacs.el"
;;;;;;  "mew/mew-header.el" "mew/mew-highlight.el" "mew/mew-imap.el"
;;;;;;  "mew/mew-imap2.el" "mew/mew-key.el" "mew/mew-lang-jp.el"
;;;;;;  "mew/mew-lang-kr.el" "mew/mew-lang-latin.el" "mew/mew-local.el"
;;;;;;  "mew/mew-mark.el" "mew/mew-message.el" "mew/mew-mime.el"
;;;;;;  "mew/mew-minibuf.el" "mew/mew-mule.el" "mew/mew-mule3.el"
;;;;;;  "mew/mew-net.el" "mew/mew-nntp.el" "mew/mew-nntp2.el" "mew/mew-passwd.el"
;;;;;;  "mew/mew-pgp.el" "mew/mew-pick.el" "mew/mew-pop.el" "mew/mew-refile.el"
;;;;;;  "mew/mew-scan.el" "mew/mew-search.el" "mew/mew-smime.el"
;;;;;;  "mew/mew-smtp.el" "mew/mew-sort.el" "mew/mew-ssh.el" "mew/mew-ssl.el"
;;;;;;  "mew/mew-summary.el" "mew/mew-summary2.el" "mew/mew-summary3.el"
;;;;;;  "mew/mew-summary4.el" "mew/mew-syntax.el" "mew/mew-thread.el"
;;;;;;  "mew/mew-unix.el" "mew/mew-vars.el" "mew/mew-vars2.el" "mew/mew-vars3.el"
;;;;;;  "mew/mew-varsx.el" "mew/mew-virtual.el" "mew/mew-win32.el"
;;;;;;  "mew/temp.el" "pcache/pcache-tests.el" "pcache/pcache.el"
;;;;;;  "speedbar-extension/speedbar-extension.el" "window-layout/window-layout.el")
;;;;;;  (21267 28790 460608))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
