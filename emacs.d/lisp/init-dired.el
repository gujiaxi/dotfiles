;;---------------------------------------------------------------------------
;; dired conf
;;---------------------------------------------------------------------------


;; dired
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

;; dired+
(require-package 'dired+)
(load "dired+-autoloads")
;; (diredp-toggle-find-file-reuse-dir t)

;; ranger
(require-package 'ranger)
(load "ranger-autoloads")


(provide 'init-dired)
