;;---------------------------------------------------------------------------
;; bbdb conf
;;---------------------------------------------------------------------------


;; bbdb
(require-package 'bbdb)
(setq bbdb-file (concat org-directory "bbdb/contacts.bbdb"))
(bbdb-initialize 'gnus 'mail 'message 'anniv 'pgp)


(provide 'init-bbdb)
;;; init-bbdb.el ends here