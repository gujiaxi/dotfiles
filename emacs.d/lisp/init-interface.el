;;---------------------------------------------------------------------------
;; interface conf
;;---------------------------------------------------------------------------


;; smart-mode-line
(require-package 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; rich-minority
(require-package 'rich-minority)
(setf rm-blacklist "")

;; smooth-scrolling
(require-package 'smooth-scrolling)
(smooth-scrolling-mode t)

;; sr-speedbar
(require-package 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-enable-update t)
(setq sr-speedbar-auto-refresh t)

;; nyan-mode
(require-package 'nyan-mode)
(nyan-mode t)


(provide 'init-interface)
