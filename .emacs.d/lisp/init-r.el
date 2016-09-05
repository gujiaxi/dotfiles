;;---------------------------------------------------------------------------
;; r-lang conf
;;---------------------------------------------------------------------------


;; ess
(require-package 'ess)
(add-to-list 'auto-mode-alist '("\\.[rR]\\'" . R-mode))
(with-eval-after-load "ess"
  (setq ess-ask-for-ess-directory nil)
  (setq ess-eval-visibly nil)
  (setq ess-history-file nil))


(provide 'init-r)
;;; init-r.el ends here