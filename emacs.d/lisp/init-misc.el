;;---------------------------------------------------------------------------
;; misc conf
;;---------------------------------------------------------------------------


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
(global-set-key (kbd "C-c q") 'quickrun)

;; htmlize
(require-package 'htmlize)
(load "htmlize-autoloads")


(provide 'init-misc)
