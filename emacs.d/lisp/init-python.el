;;----------------------------------------------------------------------------
;; python conf
;;----------------------------------------------------------------------------

;; anaconda-mode
(require-package 'anaconda-mode)
(load "anaconda-mode-autoloads")
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(provide 'init-python)
