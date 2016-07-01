;; Emacs configuration file
;; Author: Basil Dalié

; Add .emacs.d/lisp repertory to path
(add-to-list 'load-path "~/.emacs.d/lisp")

; functions
(load "~/.emacs.d/lisp/php-setup.el")

; Perso macros
(load "~/.emacs.d/macros.el")

; Key bindings
(global-set-key (kbd "C-c p") 'PhpMarkup)
(global-set-key (kbd "C-c t") 'tabul)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c f") 'csignf)
(global-set-key (kbd "C-c o") 'openfileselect)
(global-set-key (kbd "C-c c") 'html-close-balise)

; Variables settings
(set-variable 'c-basic-offset 4)
(put 'upcase-region 'disabled nil)

; For web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-setup))

; For YASnippet
(add-to-list 'load-path "~/.emacs.d/lisp/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/global-mode 1) ;; or manually load it with yas-global-mode

;; For PL/SQL mode
(load "plsql.el")

;; For emms
(add-to-list 'load-path "~/.emacs.d/lisp/emms/lisp")
(require 'emms-setup)
(emms-standard)
(emms-default-players)
(require 'emms-info)

;; variables
; General
(setq column-number-mode t)

; C/C++ 
(setq c-basic-offset '4)

