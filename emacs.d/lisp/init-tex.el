;;---------------------------------------------------------------------------
;; TeX conf
;;---------------------------------------------------------------------------


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
(add-to-list 'TeX-command-list '("Make" "make" TeX-run-command nil t))

;; company-math
(require-package 'company-math)
(load "company-math-autoloads")
(add-to-list 'company-backends 'company-math-symbols-unicode)

;; company-auctex
(require-package 'company-auctex)
(load "company-auctex-autoloads")
(company-auctex-init)


(provide 'init-tex)
