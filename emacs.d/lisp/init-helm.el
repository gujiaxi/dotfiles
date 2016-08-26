;;---------------------------------------------------------------------------
;; helm conf
;;---------------------------------------------------------------------------


;; helm
(require-package 'helm)
(require 'helm)
(require 'helm-config)
(helm-mode t)
(helm-autoresize-mode t)
(helm-adaptive-mode t)
(helm-push-mark-mode t)
(setq helm-split-window-in-side-p t)
(setq helm-ff-search-library-in-sexp t)
(setq helm-ff-file-name-history-use-recentf t)
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-s o") 'helm-occur)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; helm-bibtex
(require-package 'helm-bibtex)
(setq bibtex-completion-bibliography (list (concat org-directory "org/references.bib")))
(setq bibtex-completion-notes-symbol "✎")
(setq bibtex-completion-notes-path (concat org-directory "org/research-notes.org"))
(setq bibtex-completion-pdf-symbol "⌘")
(setq bibtex-completion-library-path (list (concat org-directory "pdf")))
(setq bibtex-completion-pdf-open-function (lambda (fpath) (call-process "SumatraPDF" nil 0 nil fpath)))
(setq bibtex-completion-cite-prompt-for-optional-arguments nil)
(setq bibtex-completion-notes-template-one-file "\n* ${author} (${year}): ${title}\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:END:\n")

;; ebib
(require-package 'ebib)
(setq ebib-index-display-fields '(title))
(setq ebib-file-search-dirs (list (concat org-directory "pdf")))
(setq ebib-bib-search-dirs (list (concat org-directory "org")))
(setq ebib-notes-directory (concat org-directory "org"))
(setq ebib-preload-bib-files '("references.bib"))
(add-to-list 'evil-emacs-state-modes 'ebib-index-mode)
(add-to-list 'evil-emacs-state-modes 'ebib-entry-mode)


(provide 'init-helm)
