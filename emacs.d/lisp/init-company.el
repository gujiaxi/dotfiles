;;----------------------------------------------------------------------------
;; company conf
;;----------------------------------------------------------------------------

;; company
(require-package 'company)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-show-numbers t)
(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)
(define-key company-active-map (kbd "C-n") #'company-select-next)
(define-key company-active-map (kbd "C-p") #'company-select-previous)
(add-to-list 'company-backends 'company-files)

(provide 'init-company)
