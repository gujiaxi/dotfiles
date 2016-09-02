;;; init.el --- The main config for Emacs

;;; Commentary:
;;
;; First-load initial file for Emacs.

;;; Code:


(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(load "init-basic")
(load "init-pkgs")
(load "init-extra")
(load "init-org")
(load "init-calendar")
(load "init-prog")
(load "init-gnus")
(load "init-interface")
(load "init-evil")
(load "init-helm")
(load "init-company")
(load "init-git")
(load "init-tex")
(load "init-clang")
(load "init-java")
(load "init-ruby")
(load "init-python")
(load "init-markdown")
(load "init-flycheck")
(load "init-deft")
(load "init-ledger")
(load "init-dired")
(load "init-ess")
(load "init-bbdb")
(load "init-web")
(load "init-misc")
(load "init-keys")


;;; init.el ends here