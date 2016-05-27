;;----------------------------------------------------------------------------
;; helm conf
;;----------------------------------------------------------------------------


;; helm
(require-package 'helm)
(require 'helm)
(require 'helm-config)
(helm-autoresize-mode t)
(helm-adaptive-mode t)
(helm-push-mark-mode t)
(setq helm-split-window-in-side-p t)
(setq helm-ff-search-library-in-sexp t)
(setq helm-ff-file-name-history-use-recentf t)
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)
(helm-mode t)

;; helm-make
(require-package 'helm-make)
(load "helm-make-autoloads")

;; helm-bibtex
(require-package 'helm-bibtex)
(autoload 'helm-bibtex "helm-bibtex" "" t)
(setq bibtex-completion-bibliography '("~/.org/misc/references.bib"))
(setq bibtex-completion-notes-symbol "✎")
(setq bibtex-completion-notes-path "~/.org/org/research-notes.org")
(setq bibtex-completion-pdf-symbol "⌘")
(setq bibtex-completion-library-path '("~/.org/pdf"))
(setq bibtex-completion-cite-prompt-for-optional-arguments nil)


(provide 'init-helm)
