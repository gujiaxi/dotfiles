;; init-gnus.el --- Gnus settings

;;; Commentary:
;;
;; Use Gnus for news reading and email operations.

;;; Code:


;; no news groups
(setq gnus-select-method '(nnml ""))

;; ask encryption password only once
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; receive email via imap
(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\”]\”[#’()]")
(add-to-list 'gnus-secondary-select-methods
             '(nnimap "Gmail"
                      (nnimap-address "imap.gmail.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)))

;; send email via smtp
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-default-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)

;; more attractive summary view
(setq gnus-thread-sort-functions '((not gnus-thread-sort-by-date)))
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

;; directories
(gnus-agentize)
(setq gnus-use-dribble-file nil)
(setq gnus-startup-file (concat user-emacs-directory "etc/gnus/.newsrc"))
(setq gnus-default-directory (concat user-emacs-directory "etc/gnus/"))
(setq gnus-home-directory (concat user-emacs-directory "etc/gnus/"))
(setq gnus-dribble-directory (concat user-emacs-directory "etc/gnus/"))
(setq gnus-directory (concat user-emacs-directory "etc/gnus/news/"))
(setq gnus-article-save-directory (concat user-emacs-directory "etc/gnus/news/"))
(setq gnus-kill-files-directory (concat user-emacs-directory "etc/gnus/news/"))
(setq gnus-agent-directory (concat user-emacs-directory "etc/gnus/news/agent/"))
(setq gnus-cache-directory (concat user-emacs-directory "etc/gnus/news/cache/"))
(setq gnus-cache-active-file (concat user-emacs-directory "etc/gnus/news/cache/active"))
(setq message-directory (concat user-emacs-directory "etc/gnus/mail/"))
(setq message-auto-save-directory (concat user-emacs-directory "etc/gnus/mail/drafts"))
(setq mail-source-directory (concat user-emacs-directory "etc/gnus/mail/incoming"))
(setq nnfolder-directory (concat user-emacs-directory "etc/gnus/mail/archive/"))
(setq nnmail-message-id-cache-file (concat user-emacs-directory "etc/gnus/.nnmail-cache"))
(setq nntp-marks-directory (concat user-emacs-directory "etc/gnus/news/marks/"))
(setq mml-default-directory (concat user-emacs-directory "etc/gnus/attachments/"))

;; email configs
(setq gnus-permanently-visible-groups "INBOX")
(setq gnus-activate-level 1)
(setq gnus-show-threads t)
(setq gnus-use-full-window nil)
(setq message-confirm-send t)
(setq message-from-style 'angles)

;; gpg
(setq mm-verify-option 'always)
(setq mm-decrypt-option 'always)
(setq mm-encrypt-option 'guided)

;; misc
(setq gnus-inhibit-startup-message t)
(setq gnus-novice-user nil)
(setq gnus-expert-user t)
(setq gnus-use-dribble-file nil)
(setq gnus-always-read-dribble-file nil)


(provide 'init-gnus)
;;; init-gnus.el ends here