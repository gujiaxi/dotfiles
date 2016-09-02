;;---------------------------------------------------------------------------
;; TeX conf
;;---------------------------------------------------------------------------


;; auctex
(require-package 'auctex)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
(add-hook 'LaTeX-mode-hook 'flymake-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; auctex-latexmk
(require-package 'auctex-latexmk)
(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)

;; company-math
(require-package 'company-math)
(add-to-list 'company-backends 'company-math-symbols-unicode)

;; company-auctex
(require-package 'company-auctex)
(company-auctex-init)


;;; init-tex.el ends here