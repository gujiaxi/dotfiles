;;----------------------------------------------------------------------------
;; flyspell conf
;;----------------------------------------------------------------------------

(setq ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

(provide 'init-flyspell)
