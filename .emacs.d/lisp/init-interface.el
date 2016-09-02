;;---------------------------------------------------------------------------
;; interface conf
;;---------------------------------------------------------------------------


;; solarized-theme
(require-package 'solarized-theme)
(setq solarized-emphasize-indicators nil)
(setq x-underline-at-descent-line t)

;; zenburn-theme
(require-package 'zenburn-theme)

;; theme-changer
(require-package 'theme-changer)
(require 'theme-changer)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'zenburn t))

;; smart-mode-line
(require-package 'smart-mode-line)
(setq rm-blacklist ".*")
(setq sml/no-confirm-load-theme t)
(sml/setup)


(provide 'init-interface)
