;;---------------------------------------------------------------------------
;; ruby
;;---------------------------------------------------------------------------


;; robe
(require-package 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-to-list 'company-backends 'company-robe)


;;; init-ruby.el ends here