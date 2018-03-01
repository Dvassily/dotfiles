					; Development helper functions

(setq-default c-basic-offset 4)

; Allows chaning intdentation type (number of spaces)
(defun set-indent-offset()
  (interactive)
  (setq-default c-basic-offset (string-to-number (read-from-minibuffer "Indent offset : "))))
