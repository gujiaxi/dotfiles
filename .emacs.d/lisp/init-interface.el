;;---------------------------------------------------------------------------
;; interface conf
;;---------------------------------------------------------------------------


;; solarized-theme
(require-package 'solarized-theme)

;; theme-changer
(require-package 'theme-changer)
(require 'theme-changer)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'tsdh-dark t))

;; smart-mode-line
(require-package 'smart-mode-line)
(setq rm-blacklist ".*")
(setq sml/no-confirm-load-theme t)
(sml/setup)


(provide 'init-interface)