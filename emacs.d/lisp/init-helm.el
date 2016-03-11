;;----------------------------------------------------------------------------
;; helm conf
;;----------------------------------------------------------------------------

;; helm
(require-package 'helm)
(require 'helm)
(require 'helm-config)
(helm-autoresize-mode t)
(setq helm-split-window-in-side-p t)
(setq helm-ff-file-name-history-use-recentf t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode t)

(provide 'init-helm)
