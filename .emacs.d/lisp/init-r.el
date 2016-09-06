;; init-r.el --- R language settings

;;; Commentary:
;;
;; R language settings for providing an efficient R programming
;; environment

;;; Code:


;; ess
(require-package 'ess)
(add-to-list 'auto-mode-alist '("\\.[rR]\\'" . R-mode))
(with-eval-after-load "ess"
  (setq ess-ask-for-ess-directory nil)
  (setq ess-eval-visibly nil)
  (setq ess-history-file nil))


(provide 'init-r)
;;; init-r.el ends here