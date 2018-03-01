					; Navigation settings

; Finds an access protected file
(defun sudo-load-file()
  (interactive)
  (let ((filepath (read-file-name "(sudo) Find file: " "/")))
    (find-file (concat "/sudo::/" filepath))))

; Allows to jump to parent directory
(add-hook 'dired-mode-hook
	  (lambda ()
	    (define-key dired-mode-map (kbd "^")
	      (lambda () (interactive) (find-alternate-file "..")))))

; Allors to open a file without opening a new buffer
(put 'dired-find-alternate-file 'disabled nil)
