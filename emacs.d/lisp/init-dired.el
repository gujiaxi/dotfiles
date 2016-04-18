;;----------------------------------------------------------------------------
;; dired conf
;;----------------------------------------------------------------------------

;; dired+
(require-package 'dired+)

;; ranger
(require-package 'ranger)
(global-set-key (kbd "C-c r") 'ranger)

(provide 'init-dired)
