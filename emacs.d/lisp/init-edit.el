;;----------------------------------------------------------------------------
;; edit conf
;;----------------------------------------------------------------------------

;; multiple-cursors
(require-package 'multiple-cursors)
(load "multiple-cursors-autoloads")
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(provide 'init-edit)
