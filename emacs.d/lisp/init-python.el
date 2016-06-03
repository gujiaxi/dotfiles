;;----------------------------------------------------------------------------
;; python conf
;;----------------------------------------------------------------------------

;; anaconda-mode
(require-package 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; company-anaconda
(require-package 'company-anaconda)
(add-to-list 'company-backends 'company-anaconda)

(provide 'init-python)
