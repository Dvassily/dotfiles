					; Packages

;; Specifies server packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

;; Adds all elpa subdirectories to load pathxs
(let ((default-directory  "~/.emacs.d/elpa"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'xml-rpc)
(require 'jira)
(require 'xml-rpc)
(require 'jira)
(require 'minimap)
(require 'matlab-load)
(require '2048-game)
(require 'git)
(require 'slime-volleyball)
(require 'csharp-mode)
(require 'typescript-mode)
(require 'flatui-theme)
(require 'eink-theme)
(require 'jazz-theme)
(require 'dired-x)
(require 'gherkin-mode)

;; ;; For Web Mode
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
