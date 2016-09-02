;;---------------------------------------------------------------------------
;; prog conf
;;---------------------------------------------------------------------------


;; cedet [built-in]
(require-package 'cedet)
(semantic-mode t)
(global-semantic-idle-scheduler-mode t)
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)

;; electric [built-in]
(require-package 'electric)
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; projectile
(require-package 'projectile)
(projectile-global-mode)

;; dumb-jump
(require-package 'dumb-jump)
(add-hook 'prog-mode-hook 'dumb-jump-mode)


;;; init-prog.el ends here