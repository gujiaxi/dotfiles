;;---------------------------------------------------------------------------
;; clang conf
;;---------------------------------------------------------------------------


;; rtags
(require-package 'rtags)
(load "rtags-autoloads")
(rtags-enable-standard-keybindings)
(setq rtags-autostart-diagnostics t)
(setq rtags-use-helm t)

;; irony-mode
(require-package 'irony)
(load "irony-autoloads")
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; company-irony
(require-package 'company-irony)
(load "company-irony-autoloads")
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-irony))

;; company-c-headers
(require-package 'company-c-headers)
(load "company-c-headers-autoloads")
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-c-headers))


(provide 'init-clang)
