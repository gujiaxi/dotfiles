;;----------------------------------------------------------------------------
;; dired conf
;;----------------------------------------------------------------------------

;; dired
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; dired+
(require-package 'dired+)
(load "dired+-autoloads")

;; ranger
(require-package 'ranger)
(load "ranger-autoloads")
(global-set-key (kbd "C-c r") 'ranger)

(provide 'init-dired)
