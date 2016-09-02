;;; init-extra.el --- Extra configs for built-in packages.

;;; Commentary:
;;
;; Mostly, built-in packages are configured here.

;;; Code:


;; paren [built-in]
(require-package 'paren)
(show-paren-mode t)

;; ido [built-in]
(require-package 'ido)
(ido-mode t)
(ido-everywhere t)

;; windmove [built-in]
(require-package 'windmove)
(windmove-default-keybindings)

;; hideshow [built-in]
(require-package 'hideshow)
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; winner [built-in]
(require-package 'winner)
(winner-mode t)

;; zone [built-in]
(require-package 'zone)
(autoload 'zone-when-idle "zone" nil t)
(zone-when-idle 18000)

;; saveplace [built-in]
(require-package 'saveplace)
(setq-default save-place t)

;; savehist [built-in]
(require-package 'savehist)
(savehist-mode t)

;; recentf [built-in]
(require-package 'recentf)
(setq recentf-max-saved-items 500)
(recentf-mode t)

;; linum [built-in]
(require-package 'linum)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'bibtex-mode-hook 'linum-mode)
(add-hook 'markdown-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)


(provide 'init-extra)
;;; init-extra.el ends here