;;; Packages
(require 'package)
;; Use Melpa packages
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
;; Use Elpa packages (default in versions 24+)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t))
(package-initialize)

;;; Package configuration
(setq ac-ignore-case nil)

;;; Key bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-c r") 'overwrite-mode)
(global-set-key (kbd "C-c t") (lambda () (interactive) (eshell 'n)))
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)
;; Enable shift-arrow keybindings for window movement
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
;; *Unbind* C-z (suspend)
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

;;; Display items
;; Do not wrap long lines
(setq-default truncate-lines t)
;; Show trailing whitespace in code files
(add-hook 'prog-mode-hook (lambda () (setq show-trailing-whitespace t)))

;;; Better formatting of files
;; Require newlines at the end of files
(setq-default require-final-newline t)

;;; Global modes
;; Line numbers
(global-linum-mode 1)
;; Autocomplete mode
(global-auto-complete-mode 1)
;; Projectile
(projectile-global-mode)

;;; Plugin initialization
(exec-path-from-shell-initialize)

;;; GUI Emacs
;; Disable toolbar
(tool-bar-mode -1)
;; Disable menubar
(menu-bar-mode -1)
;; Disable scrollbar
(scroll-bar-mode -1)
;; Maximize the window
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;; Hooks
(add-hook 'yaml-mode 'auto-complete-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;;; Auto-mode adjustments
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;;; Themes
;; Custom theme path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; Theme specifics
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("1fab355c4c92964546ab511838e3f9f5437f4e68d9d1d073ab8e36e51b26ca6a" "7bf64a1839bf4dbc61395bd034c21204f652185d17084761a648251041b70233" "63b7b8a45190b2e7362a975067bd76b55ae548c00e9088d12b4133eb0525a604" default)))
 '(fringe-mode 6 nil (fringe))
 '(global-auto-complete-mode t)
 '(linum-format " %7d ")
 '(main-line-color1 "#191919")
 '(main-line-color2 "#111111")
 '(powerline-color1 "#191919")
 '(powerline-color2 "#111111"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#2222FF"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#22A0F0"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#22F0F0"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#22F0A0"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#22FF22"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#A0F022"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#F0A022"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#FF2222"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#F022A0")))))
