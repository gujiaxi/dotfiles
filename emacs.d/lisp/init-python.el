;;----------------------------------------------------------------------------
;; python conf
;;----------------------------------------------------------------------------

;; anaconda-mode
(require-package 'anaconda-mode)
(load "anaconda-mode-autoloads")
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; company-anaconda
(require-package 'company-anaconda)
(load "company-anaconda-autoloads")
(add-to-list 'company-backends 'company-anaconda)

(provide 'init-python)
