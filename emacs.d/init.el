;;---------------------------------------------------------------------------
;; Main conf
;;---------------------------------------------------------------------------


(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-basic)
(require 'init-header)
;; built-in packages
(require 'init-org)
(require 'init-calendar)
(require 'init-prog)
(require 'init-gnus)
;; third-party packages
(require 'init-theme)
(require 'init-interface)
(require 'init-evil)
(require 'init-helm)
(require 'init-company)
(require 'init-git)
(require 'init-tex)
(require 'init-clang)
(require 'init-java)
(require 'init-ruby)
(require 'init-haskell)
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


(provide 'init)
