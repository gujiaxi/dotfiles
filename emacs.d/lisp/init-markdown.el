;;---------------------------------------------------------------------------
;; markdown conf
;;---------------------------------------------------------------------------


;; markdown-mode
(require-package 'markdown-mode)
(load "markdown-mode-autoloads")
(setq markdown-enable-math t)
(setq markdown-command "pandoc")


(provide 'init-markdown)
