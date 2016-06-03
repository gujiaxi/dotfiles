;;---------------------------------------------------------------------------
;; flycheck conf
;;---------------------------------------------------------------------------

;; flymake
;; turn it off since flycheck is on
(remove-hook 'LaTeX-mode-hook 'flymake-mode)

;; flyspell
(setq ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; flycheck
(require-package 'flycheck)
(global-flycheck-mode)

;; langtool
(require-package 'langtool)
(setq langtool-language-tool-jar "~/.tools/languagetool-commandline.jar")
(setq langtool-default-language "en-US")


(provide 'init-flycheck)
