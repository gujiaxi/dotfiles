;;---------------------------------------------------------------------------
;; markdown conf
;;---------------------------------------------------------------------------


;; markdown-mode
(require-package 'markdown-mode)
(setq markdown-enable-math t)
(setq markdown-command "pandoc")


(provide 'init-markdown)
