;;----------------------------------------------------------------------------
;; Main conf
;;----------------------------------------------------------------------------

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-basic)
;; built-in packages
(require 'init-flymake)
(require 'init-flyspell)
(require 'init-org)
(require 'init-semantic)
(require 'init-gnus)
;; third-party packages
(require 'init-theme)
(require 'init-interface)
(require 'init-evil)
(require 'init-helm)
(require 'init-company)
(require 'init-flycheck)
(require 'init-edit)
(require 'init-git)
(require 'init-tex)
(require 'init-java)
(require 'init-python)
(require 'init-markdown)
(require 'init-deft)
(require 'init-dired)
(require 'init-ess)
(require 'init-bbdb)
(require 'init-web-mode)
(require 'init-projectile)
(require 'init-misc)
(require 'init-general)

(provide 'init)
