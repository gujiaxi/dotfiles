;; init-theme.el --- Emacs theme and mode-line tweak

;;; Commentary:
;;
;; Adopt a fancy color theme and polish the mode-line

;;; Code:


;; solarized-theme
(require-package 'solarized-theme)
(setq solarized-emphasize-indicators nil)

;; zenburn-theme
(require-package 'zenburn-theme)

;; theme-changer
(require-package 'theme-changer)
(autoload 'change-theme "theme-changer" nil nil)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'zenburn t))

;; powerline
(require-package 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'utf-8)


(provide 'init-theme)
;;; init-theme.el ends here
