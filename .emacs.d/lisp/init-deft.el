;;---------------------------------------------------------------------------
;; deft conf
;;---------------------------------------------------------------------------

;; deft
(require-package 'deft)
(setq deft-directory (concat org-directory "org"))
(setq deft-extensions '("org" "md" "tex"))
(setq deft-default-extension "org")
(setq deft-recursive t)
(setq deft-auto-save-interval nil)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)


;;; init-deft ends here