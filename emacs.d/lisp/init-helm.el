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
(setq helm-recentf-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-locate-fuzzy-match t)
(setq helm-lisp-fuzzy-completion t)
(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode t)

;; helm-make
(require-package 'helm-make)
(load "helm-make-autoloads")

(provide 'init-helm)
