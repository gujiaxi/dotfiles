;;---------------------------------------------------------------------------
;; interface conf
;;---------------------------------------------------------------------------


;; solarized-theme
(require-package 'solarized-theme)
(setq solarized-high-contrast-mode-line t)

;; theme-changer
(require-package 'theme-changer)
(require 'theme-changer)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'tsdh-dark t))

;; powerline
(require-package 'powerline)
(setq powerline-default-separator 'utf-8)
(powerline-default-theme)

;; undisplay minor mode names in mode-line
(defun clear-minor-mode-alist (&rest _) (setq minor-mode-alist nil))
(add-hook 'after-load-functions 'clear-minor-mode-alist)


(provide 'init-interface)