; Global helper functions

; Display the column number at the cursor
(setq-default column-number-mode t)

; Display the line number at the cursor
(global-linum-mode t)
;
; Insert buffer-name at the cursor location
(defun insert-buffer-name()
  (interactive)
  (insert (buffer-name (current-buffer))))
