;;----------------------------------------------------------------------------
;; TeX conf
;;----------------------------------------------------------------------------

;; auctex
(require-package 'auctex)
(load "auctex-autoloads")
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
(add-hook 'LaTeX-mode-hook 'flymake-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; auctex-latexmk
(require-package 'auctex-latexmk)
(load "auctex-latexmk-autoloads")
(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)

;; ebib
(require-package 'ebib)
(load "ebib-autoloads")
(evil-set-initial-state 'ebib-entry-mode 'emacs)
(evil-set-initial-state 'ebib-index-mode 'emacs)
(evil-set-initial-state 'ebib-log-mode 'emacs)

(provide 'init-tex)
