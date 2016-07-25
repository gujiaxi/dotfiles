;;---------------------------------------------------------------------------
;; theme conf
;;---------------------------------------------------------------------------

;; solarized-theme
(require-package 'solarized-theme)

;; theme-changer
(require-package 'theme-changer)
(require 'theme-changer)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'tsdh-dark t))


(provide 'init-theme)
