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

;; company-c-headers
(require-package 'company-c-headers)
(load "company-c-headers-autoloads")
(add-to-list 'company-backends 'company-c-headers)

;; company-math
(require-package 'company-math)
(load "company-math-autoloads")
(add-to-list 'company-backends 'company-math-symbols-unicode)

;; company-auctex
(require-package 'company-auctex)
(load "company-auctex-autoloads")
(company-auctex-init)

(provide 'init-company)
