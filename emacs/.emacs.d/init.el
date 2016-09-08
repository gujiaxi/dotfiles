;; init.el --- Main init file for Emacs

;;; Commentary:
;;
;; Main init file for Emacs.

;;; Code:


;; --- bootstrap ---
(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; --- rough settings ---
(require 'init-basic)
(require 'init-pkgs)
(require 'init-misc)
(require 'init-theme)
;; --- core packages ---
(require 'init-evil)
(require 'init-helm)
(require 'init-company)
;; --- program languages ---
(require 'init-clang)
(require 'init-java)
(require 'init-markdown)
(require 'init-python)
(require 'init-r)
(require 'init-ruby)
(require 'init-web)
;; --- lazy loading ---
(with-eval-after-load "org"
  (require 'init-org))
(with-eval-after-load "gnus"
  (require 'init-gnus))
(with-eval-after-load "tex-mode"
  (require 'init-tex))


;;; init.el ends here