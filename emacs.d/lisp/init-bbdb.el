;;---------------------------------------------------------------------------
;; bbdb conf
;;---------------------------------------------------------------------------


;; bbdb
(require-package 'bbdb)
(setq bbdb-file (concat user-emacs-directory ".bbdb"))
(bbdb-initialize 'gnus 'message)


(provide 'init-bbdb)
