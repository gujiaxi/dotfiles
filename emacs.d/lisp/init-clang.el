;;---------------------------------------------------------------------------
;; clang conf
;;---------------------------------------------------------------------------


;; rtags
(require-package 'rtags)
(rtags-enable-standard-keybindings)
(setq rtags-autostart-diagnostics t)
(setq rtags-use-helm t)

;; irony-mode
(require-package 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)


(provide 'init-clang)
