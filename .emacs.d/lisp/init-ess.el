;;---------------------------------------------------------------------------
;; ess conf
;;---------------------------------------------------------------------------


;; ess
(require-package 'ess)
(add-to-list 'auto-mode-alist '("\\.[rR]\\'" . R-mode))
(setq ess-eval-visibly nil)
(setq ess-ask-for-ess-directory nil)


(provide 'init-ess)
;;; init-ess.el ends here