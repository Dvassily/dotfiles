;; Author : Basil Dalié
;; Last modified : 16/12/2015

(load-file "~/.emacs.d/lisp/project-table.el")

(setq project-loaded nil)

(defun load-project-env(compile-dir source-dir compile-cmd)
  (catch 'project-already-loaded
    (if project-loaded
   	(throw 'project-already-loaded (concat "Project " project-name " is already loaded.")))
    (setq compile-dir (concat compile-dir "/"))
    (dired source-dir)
    (split-window-right)
    (other-window 1)
    (switch-to-buffer "*compilation*")
    (compilation-mode)
    (split-window-below)
    (enlarge-window 8)
    (other-window 1)
    (setq compilation-directory compile-dir)
    (setq compile-command compile-cmd)
    (setq default-directory compile-dir)
    (progn (ansi-term "/bin/bash") (insert "abc"))
    (other-window 1)
    (setq default-directory compile-dir)
    (message default-directory)
    (setq project-loaded 1)))

(defun new-project()
  (interactive)
  (setq project-table-path "~/.emacs.d/lisp/project-table.el")
  (setq project-name (read-from-minibuffer "Project name: "))
  (setq compile-dir (read-file-name "Compilation directory: "))
  (setq compile-cmd (read-from-minibuffer "Compilation command: "))
  (setq source-dir (read-file-name "Source directory: "))
  (setq table-entry (concat "(puthash \"" project-name "\" '(\"" compile-dir "\" \"" source-dir "\" \"" compile-cmd "\") project-table)"))
  (write-region (concat "\n" table-entry) nil project-table-path 'append)
  (load-file "~/.emacs.d/lisp/project-table.el"))

(defun load-project()
  (interactive)
  (catch 'unknown-project
    (setq project-name (read-from-minibuffer "Project name: "))
    (setq project (gethash project-name project-table))
    (if (equal project nil)
	(throw 'unknown-project (concat "Can't find " project-name))
      (message (load-project-env (car project) (cadr project) (caddr project)))
      )
    )
  )

