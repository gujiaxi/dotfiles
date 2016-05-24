;;----------------------------------------------------------------------------
;; edit conf
;;----------------------------------------------------------------------------


;; linum-relative
(require-package 'linum-relative)
(load "linum-relative-autoloads")
(linum-relative-mode)

;; anzu
(require-package 'anzu)
(load "anzu-autoloads")
(global-anzu-mode t)

;; avy
(require-package 'avy)
(load "avy-autoloads")

;; aggressive-indent
(require-package 'aggressive-indent)
(load "aggressive-indent-autoloads")
(global-aggressive-indent-mode t)

;; expand-region
(require-package 'expand-region)
(load "expand-region-autoloads")
(global-set-key (kbd "C-=") 'er/expand-region)

;; multiple-cursors
(require-package 'multiple-cursors)
(load "multiple-cursors-autoloads")
(global-set-key (kbd "C->") 'mc/mark-next-like-this)

;; swiper
(require-package 'swiper)
(load "swiper-autoloads")
(global-set-key (kbd "C-s") 'swiper)

;; smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(load "rainbow-delimiters-autoloads")
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; yasnippet
(require-package 'yasnippet)
(load "yasnippet-autoloads")
(yas-global-mode t)

;; color-identifiers-mode
(require-package 'color-identifiers-mode)
(load "color-identifiers-mode-autoloads")
(add-hook 'prog-mode-hook 'color-identifiers-mode)


(provide 'init-edit)
