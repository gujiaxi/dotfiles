;;----------------------------------------------------------------------------
;; speedbar conf
;;----------------------------------------------------------------------------

(require-package 'sr-speedbar)
(load "sr-speedbar-autoloads")
(setq speedbar-show-unknown-files t)
(setq speedbar-enable-update t)
(setq sr-speedbar-auto-refresh t)
(global-set-key [f6] 'sr-speedbar-toggle)

(provide 'init-speedbar)
