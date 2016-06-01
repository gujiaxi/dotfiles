;;---------------------------------------------------------------------------
;; misc conf
;;---------------------------------------------------------------------------


;; linum-relative
(require-package 'linum-relative)
(load "linum-relative-autoloads")
(linum-relative-mode)
(set-face-attribute 'linum-relative-current-face nil
                    :foreground nil
                    :background nil)

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

;; multiple-cursors
(require-package 'multiple-cursors)
(load "multiple-cursors-autoloads")

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

;; flymake-cursor
(require-package 'flymake-cursor)
(load "flymake-cursor-autoloads")

;; symon
(require-package 'symon)
(load "symon-autoloads")
(setq symon-delay 33)
(symon-mode)

;; indent-guide
(require-package 'indent-guide)
(load "indent-guide-autoloads")
(add-hook 'prog-mode-hook 'indent-guide-mode)
(setq indent-guide-char "·")

;; which-key
(require-package 'which-key)
(load "which-key-autoloads")
(which-key-mode)

;; info+
(require-package 'info+)
(load "info+-autoloads")

;; quickrun
(require-package 'quickrun)
(load "quickrun-autoloads")

;; htmlize
(require-package 'htmlize)
(load "htmlize-autoloads")

;; tldr
(require-package 'tldr)
(load "tldr-autoloads")

(provide 'init-misc)
