;;----------------------------------------------------------------------------
;; flycheck conf
;;----------------------------------------------------------------------------

;; flymake
(with-eval-after-load 'flymake
  (defun flymake-get-tex-args (file-name)
    (list "chktex" (list "-q" "-v0" file-name)))
  (setq flymake-run-in-place nil))

;; flyspell
(setq ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; flycheck
(require-package 'flycheck)
(load "flycheck-autoloads")
(add-hook 'prog-mode-hook 'flycheck-mode)

;; langtool
(require-package 'langtool)
(load "langtool-autoloads")
(setq langtool-language-tool-jar "~/.tools/languagetool-commandline.jar")
(setq langtool-default-language "en-US")


(provide 'init-flycheck)
