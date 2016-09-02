;;---------------------------------------------------------------------------
;; bbdb conf
;;---------------------------------------------------------------------------


;; bbdb
(require-package 'bbdb)
(setq bbdb-file (concat org-directory "bbdb/contacts.bbdb"))
(bbdb-initialize 'gnus 'mail 'message 'anniv 'pgp)


;;; init-bbdb.el ends here