;;----------------------------------------------------------------------------
;; project
;;----------------------------------------------------------------------------

;; projectile
(require-package 'projectile)
(load "projectile-autoloads")
(add-hook 'prog-mode-hook 'projectile-mode)

(provide 'init-project)
