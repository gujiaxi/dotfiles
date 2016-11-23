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
;; --- load packages ---
(require 'init-misc)
(require 'init-theme)
(require 'init-evil)
(require 'init-helm)
;; --- lazy loading ---
(with-eval-after-load "org"
  (require 'init-org))
(with-eval-after-load "gnus"
  (require 'init-gnus))
(with-eval-after-load "tex-mode"
  (require 'init-tex))


;;; init.el ends here
