;; init-theme.el --- Emacs theme and mode-line tweak

;;; Commentary:
;;
;; Adopt a fancy color theme and polish the mode-line

;;; Code:


;; solarized-theme
(require-package 'solarized-theme)
(setq solarized-emphasize-indicators nil)
(setq x-underline-at-descent-line t)

;; zenburn-theme
(require-package 'zenburn-theme)
(set-face-attribute 'fringe nil :background 'unspecified)

;; theme-changer
(require-package 'theme-changer)
(autoload 'change-theme "theme-changer" nil nil)
(if (display-graphic-p)
    (change-theme 'solarized-light 'solarized-dark)
  (load-theme 'zenburn t))

;; smart-mode-line
(require-package 'smart-mode-line)
(setq rm-blacklist ".*")
(setq sml/no-confirm-load-theme t)
(sml/setup)


(provide 'init-theme)
;;; init-theme.el ends here