;; ;; On init
(load "~/.emacs.d/config/on-init.el")

;; Development
(load "~/.emacs.d/config/compilation.el")
(load "~/.emacs.d/config/dev-helper.el")

;; Editor
(load "~/.emacs.d/config/global-helper.el")
(load "~/.emacs.d/config/frames.el")
(load "~/.emacs.d/config/navigation.el")
(load "~/.emacs.d/config/bindings.el")
(load "~/.emacs.d/config/dired.el")


;; Appearance
(load "~/.emacs.d/config/appearance.el")
(load "~/.emacs.d/config/themes.el")

;; macros
(load "~/.emacs.d/macros.el")

;; Load and create projccts
(load-file "~/.emacs.d/lisp/load-project.el")
