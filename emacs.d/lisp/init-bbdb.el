;;---------------------------------------------------------------------------
;; bbdb conf
;;---------------------------------------------------------------------------


;; bbdb
(require-package 'bbdb)
(setq bbdb-file "~/.efiles/bbdb/contacts.bbdb")
(bbdb-initialize 'gnus 'mail 'message 'anniv 'pgp)


(provide 'init-bbdb)
