;;----------------------------------------------------------------------------
;; interface conf
;;----------------------------------------------------------------------------

;; elscreen
(require-package 'elscreen)
(load "elscreen-autoloads")
(elscreen-start)

;; smooth-scrolling
(require-package 'smooth-scrolling)
(load "smooth-scrolling-autoloads")
(smooth-scrolling-mode t)

;; sr-speedbar
(require-package 'sr-speedbar)
(load "sr-speedbar-autoloads")
(setq speedbar-show-unknown-files t)
(setq speedbar-enable-update t)
(setq sr-speedbar-auto-refresh t)
(global-set-key [f6] 'sr-speedbar-toggle)

;; yascroll
(require-package 'yascroll)
(load "yascroll-autoloads")
(global-yascroll-bar-mode t)

(provide 'init-interface)
