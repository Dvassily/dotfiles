					; Key bindings
; C-c bindings
(global-set-key (kbd "C-c p") 'PhpMarkup)
(global-set-key (kbd "C-c t") 'tabul)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c m") 'toggle-menu-bar-mode-from-frame)
(global-set-key (kbd "C-c ^") 'dired-jump)
(global-set-key (kbd "C-c c") 'recompile)
(global-set-key (kbd "C-c i") 'insert-buffer-name)
(global-set-key (kbd "C-c o") 'toggle-dired-omit)
(global-set-key (kbd "C-c T") 'switch-theme)
(global-set-key (kbd "C-c b") 'switch-to-buffer)
(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-c v") 'set-variable)
(global-set-key (kbd "C-c s") 'sudo-load-file)
(global-set-key (kbd "C-c u") 'uncomment-region)

; Magit bindings
(global-set-key (kbd "M-g P") 'magit-pull)
(global-set-key (kbd "M-g p") 'magit-push)
(global-set-key (kbd "M-g c") 'magit-commit)
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g l") 'magit-log)

; Other
(global-set-key (kbd "C-x M-r") 'close-frame-and-buffer)
