;;--------------------------------------------------------------------------
;; clang conf
;;--------------------------------------------------------------------------


;; irony-mode
(require-package 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; company-irony
(require-package 'company-irony)
(add-to-list 'company-backends 'company-irony)

;; company-c-headers
(require-package 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)


;;; init-clang.el ends here