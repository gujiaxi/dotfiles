;;---------------------------------------------------------------------------
;; theme conf
;;---------------------------------------------------------------------------

;; solarized-theme
(require-package 'solarized-theme)

;; theme-changer
(require-package 'theme-changer)
(load "theme-changer-autoloads")
(require 'theme-changer)
(setq calendar-location-name "Beijing, China")
(setq calendar-latitude 39.91)
(setq calendar-longitude 116.40)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'manoj-dark t))


(provide 'init-theme)
