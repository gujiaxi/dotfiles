;;----------------------------------------------------------------------------
;; prog conf
;;----------------------------------------------------------------------------

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

(provide 'init-prog)
