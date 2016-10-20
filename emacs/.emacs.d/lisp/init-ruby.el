;; init-ruby.el --- Ruby settings

;;; Commentary:
;;
;; Ruby environment

;;; Code:


;; robe
(require-package 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-to-list 'company-backends 'company-robe)


(provide 'init-ruby)
;;; init-ruby.el ends here