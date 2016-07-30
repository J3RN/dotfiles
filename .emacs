(require 'package)
; Set to use Melpa packages
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
; Use Elpa packages (default in versions 24+)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t))
(package-initialize)

; Key bindings
(global-set-key (kbd "C-x g") 'magit-status)

; Do not wrap long lines
(setq-default truncate-lines t)

; Show trailing whitespace
(setq-default show-trailing-whitespace t)

; Show line numbers
(global-linum-mode 1)

 ; Always enable auto-complete mode
(global-auto-complete-mode 1)
