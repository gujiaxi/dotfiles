;;----------------------------------------------------------------------------
;; deft conf
;;----------------------------------------------------------------------------

;; deft
(require-package 'deft)
(load "deft-autoloads")
(setq deft-directory "~/.org/org")
(setq deft-extensions '("org" "md" "tex" "txt"))
(setq deft-default-extension "org")
(setq deft-auto-save-interval 0)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)
(global-set-key (kbd "C-c d") 'deft)

(provide 'init-deft)
