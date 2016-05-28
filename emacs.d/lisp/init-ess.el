;;---------------------------------------------------------------------------
;; ess conf
;;---------------------------------------------------------------------------


;; ess
(require-package 'ess)
(autoload 'R-mode "ess-site" "" t)
(add-to-list 'auto-mode-alist '("\\.[rR]$" . R-mode))
(setq ess-eval-visibly nil)
(setq ess-ask-for-ess-directory nil)


(provide 'init-ess)
