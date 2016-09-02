;;----------------------------------------------------------------------------
;; Gnus conf
;;----------------------------------------------------------------------------

;; mail path
(gnus-agentize)
(setq gnus-use-dribble-file nil)
(setq gnus-default-directory "~/Documents/Gnus")
(setq gnus-home-directory "~/Documents/Gnus")
(setq message-directory "~/Documents/Gnus/Mail")
(setq gnus-directory "~/Documents/Gnus/News")
(setq nnfolder-directory "~/Documents/Gnus/Mail/archive")

;; set nntp
(setq gnus-select-method '(nntp "news.gmane.org"))

;; ask encryption password only once
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; receive email via imap
(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\”]\”[#’()]")
(add-to-list 'gnus-secondary-select-methods
             '(nnimap "imap.gmail.com"
                      (nnimap-address "imap.gmail.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)))

;; send email via smtp
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "imjiaxi@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;; more attractive summary view
(setq gnus-summary-display-arrow t)
(when window-system
  (setq gnus-sum-thread-tree-indent "  ")
  (setq gnus-sum-thread-tree-root "") ;; "● ")
  (setq gnus-sum-thread-tree-false-root "") ;; "◯ ")
  (setq gnus-sum-thread-tree-single-indent "") ;; "◎ ")
  (setq gnus-sum-thread-tree-vertical        "│")
  (setq gnus-sum-thread-tree-leaf-with-other "├─► ")
  (setq gnus-sum-thread-tree-single-leaf     "╰─► "))
(setq gnus-summary-line-format
      (concat
       "%0{%U%R%z%}"
       "%3{│%}" "%1{%d%}" "%3{│%}"
       "  " "%4{%-20,20f%}"
       "  " "%3{│%}"
       " " "%1{%B%}"
       "%s\n"))


(provide 'init-gnus)
;;; init-gnus.el ends here