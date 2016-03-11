;;----------------------------------------------------------------------------
;; window conf
;;----------------------------------------------------------------------------

;; yascroll
(require-package 'yascroll)
(load "yascroll-autoloads")
(global-yascroll-bar-mode t)

;; beacon
(require-package 'beacon)
(load "beacon-autoloads")
(beacon-mode t)

;; smooth-scrolling
(require-package 'smooth-scrolling)
(load "smooth-scrolling-autoloads")
(smooth-scrolling-mode t)

;; elscreen
(require-package 'elscreen)
(load "elscreen-autoloads")
(elscreen-start)

(provide 'init-window)
