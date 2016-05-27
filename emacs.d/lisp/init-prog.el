;;---------------------------------------------------------------------------
;; prog conf
;;---------------------------------------------------------------------------


;; cedet [built-in]
(semantic-mode t)
(global-semantic-idle-scheduler-mode t)
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)

;; electric [built-in]
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; projectile
(require-package 'projectile)
(load "projectile-autoloads")
(add-hook 'prog-mode-hook 'projectile-mode)

;; dumb-jump
(require-package 'dumb-jump)
(load "dumb-jump-autoloads")
(add-hook 'prog-mode-hook 'dumb-jump-mode)


(provide 'init-prog)
