;;---------------------------------------------------------------------------
;; dired conf
;;---------------------------------------------------------------------------


;; image-dired [built-in]
(require-package 'image-dired)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

;; ranger
(require-package 'ranger)


(provide 'init-dired)
;;; init-dired.el ends here