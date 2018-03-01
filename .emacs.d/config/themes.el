					; Themes configuration

(if (string-equal window-system "x")
    (load-theme 'jazz t))

(setq custom-themes (remove 'changed (remove 'user custom-known-themes)))

(defun switch-theme()
  (interactive)
  (setq custom-themes (append (cdr custom-themes) (list (car custom-themes))))
  (disable-theme (car custom-enabled-themes))
  (load-theme (car custom-themes) t))

