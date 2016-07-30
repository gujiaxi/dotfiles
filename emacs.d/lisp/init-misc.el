;;---------------------------------------------------------------------------
;; misc conf
;;---------------------------------------------------------------------------


;; linum-relative
(require-package 'linum-relative)
(linum-relative-mode)
(setq linum-relative-current-symbol "->")
(set-face-attribute 'linum-relative-current-face nil
                    :foreground nil
                    :background nil)

;; anzu
(require-package 'anzu)
(global-anzu-mode t)

;; avy
(require-package 'avy)

;; aggressive-indent
(require-package 'aggressive-indent)
(global-aggressive-indent-mode t)

;; multiple-cursors
(require-package 'multiple-cursors)

;; smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; yasnippet
(require-package 'yasnippet)
(yas-global-mode t)

;; color-identifiers-mode
(require-package 'color-identifiers-mode)
(add-hook 'prog-mode-hook 'color-identifiers-mode)

;; sr-speedbar
(require-package 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-enable-update t)
(setq sr-speedbar-auto-refresh t)

;; symon
(require-package 'symon)
(setq symon-delay 33)
(symon-mode)

;; indent-guide
(require-package 'indent-guide)
(add-hook 'prog-mode-hook 'indent-guide-mode)
(setq indent-guide-char "·")

;; which-key
(require-package 'which-key)
(which-key-mode)

;; quickrun
(require-package 'quickrun)

;; smooth-scrolling
(require-package 'smooth-scrolling)
(smooth-scrolling-mode t)

;; nyan-mode
(require-package 'nyan-mode)
(nyan-mode t)

;; wgrep
(require-package 'wgrep)

;; bing-dict
(require-package 'bing-dict)


(provide 'init-misc)
