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

;; helm-descbinds
(require-package 'helm-descbinds)
(helm-descbinds-mode)

;; helm-bibtex
(require-package 'helm-bibtex)
(setq bibtex-completion-bibliography '("~/.org/misc/references.bib"))
(setq bibtex-completion-notes-symbol "✎")
(setq bibtex-completion-notes-path "~/.org/org/research-notes.org")
(setq bibtex-completion-pdf-symbol "⌘")
(setq bibtex-completion-library-path '("~/.org/pdf"))
(setq bibtex-completion-pdf-open-function (lambda (fpath) (call-process "SumatraPDF" nil 0 nil fpath)))
(setq bibtex-completion-cite-prompt-for-optional-arguments nil)

;; helm-projectile
(require-package 'helm-projectile)
(helm-projectile-on)


(provide 'init-helm)
