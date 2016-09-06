;; init-tex.el --- TeX settings

;;; Commentary:
;;
;; Mostly I use LaTeX.

;;; Code:


;; auctex
(require-package 'auctex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
(add-hook 'LaTeX-mode-hook 'flycheck-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

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


(provide 'init-tex)
;;; init-tex.el ends here