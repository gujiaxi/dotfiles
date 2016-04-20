;;----------------------------------------------------------------------------
;; theme conf
;;----------------------------------------------------------------------------

;; powerline
(require-package 'powerline)
(load "powerline-autoloads")
(powerline-default-theme)
(setq powerline-default-separator nil)

;; theme-changer
(require-package 'theme-changer)
(load "theme-changer-autoloads")
(setq calendar-location-name "Beijing, China")
(setq calendar-latitude 39.91)
(setq calendar-longitude 116.40)

;; solarized-theme
(require-package 'solarized-theme)
(load "solarized-theme-autoloads")
(require 'theme-changer)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'manoj-dark t))

(provide 'init-theme)
