;;----------------------------------------------------------------------------
;; parens conf
;;----------------------------------------------------------------------------

;; smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(load "rainbow-delimiters-autoloads")
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'init-parens)
