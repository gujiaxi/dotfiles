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


(provide 'init-helm)
