;;---------------------------------------------------------------------------
;; dired conf
;;---------------------------------------------------------------------------


;; dired
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

;; ranger
(require-package 'ranger)


(provide 'init-dired)
