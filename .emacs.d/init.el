;;; init.el --- The main config for Emacs

;;; Commentary:
;;
;; First-load initial file for Emacs.

;;; Code:


(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-basic)
(require 'init-pkgs)
(require 'init-extra)
(require 'init-org)
(require 'init-calendar)
(require 'init-prog)
(require 'init-gnus)
(require 'init-interface)
(require 'init-evil)
(require 'init-helm)
(require 'init-company)
(require 'init-git)
(require 'init-tex)
(require 'init-clang)
(require 'init-java)
(require 'init-ruby)
(require 'init-python)
(require 'init-markdown)
(require 'init-flycheck)
(require 'init-deft)
(require 'init-ledger)
(require 'init-dired)
(require 'init-ess)
(require 'init-bbdb)
(require 'init-web)
(require 'init-misc)
(require 'init-keys)


;;; init.el ends here