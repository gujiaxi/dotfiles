;; init.el --- Python environment

;;; Commentary:
;;
;; Configs for a nice python environment

;;; Code:


;; anaconda-mode
(require-package 'anaconda-mode)
(setq anaconda-mode-installation-directory (concat user-emacs-directory "etc/anaconda-mode"))
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; company-anaconda
(require-package 'company-anaconda)
(add-to-list 'company-backends 'company-anaconda)


(provide 'init-python)
;;; init-python.el ends here