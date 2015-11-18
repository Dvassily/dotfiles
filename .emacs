; Emacs configuration file
; functions
(load "/home/basil/.emacs.d/lisp/php-setup.el")

; Perso macros
(load "/home/basil/.emacs.d/macros.el")

; Key bindings
(global-set-key (kbd "C-c p") 'PhpMarkup)
(global-set-key (kbd "C-c t") 'tabul)
(global-set-key (kbd "C-c r") 'replace-string)

; Variables settings
(set-variable 'c-basic-offset 4)
(put 'upcase-region 'disabled nil)

; For web-mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-setup))

; For YASnippet
(add-to-list 'load-path "/usr/share/emacs/site-lisp/yas")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/global-mode 1) ;; or manually load it with yas-global-mode

(require 'emms-setup)
(emms-standard)
(emms-default-players)
(require 'emms-info)
