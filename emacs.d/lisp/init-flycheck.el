;;----------------------------------------------------------------------------
;; flycheck conf
;;----------------------------------------------------------------------------

;; flycheck
(require-package 'flycheck)
(load "flycheck-autoloads")
(add-hook 'prog-mode-hook 'flycheck-mode)

(provide 'init-flycheck)
