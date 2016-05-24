;;---------------------------------------------------------------------------
;; interface conf
;;---------------------------------------------------------------------------


;; smart-mode-line
(require-package 'smart-mode-line)
(load "smart-mode-line-autoloads")
(sml/setup)

;; rich-minority
(require-package 'rich-minority)
(load "rich-minority-autoloads")
(rich-minority-mode t)
(setf rm-blacklist "")

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

;; nyan-mode
(require-package 'nyan-mode)
(load "nyan-mode-autoloads")
(nyan-mode t)


(provide 'init-interface)
