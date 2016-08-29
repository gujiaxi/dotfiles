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

;; ebib
(require-package 'ebib)
(add-to-list 'evil-emacs-state-modes 'ebib-index-mode)
(add-to-list 'evil-emacs-state-modes 'ebib-entry-mode)
(setq ebib-index-display-fields '(title))
(setq ebib-file-search-dirs (list (concat org-directory "pdf")))
(setq ebib-bib-search-dirs (list (concat org-directory "org")))
(setq ebib-notes-directory (concat org-directory "org"))
(setq ebib-preload-bib-files '("references.bib"))
(setq ebib-notes-use-single-file (concat org-directory "org/research-notes.org"))
(eval-after-load 'ebib
  '(progn (define-key ebib-multiline-mode-map (kbd "C-c C-c") 'ebib-quit-multiline-buffer-and-save)
          (define-key ebib-multiline-mode-map (kbd "C-c C-k") 'ebib-cancel-multiline-buffer)))
(setq ebib-notes-title-function 'iz-ebib-notes-create-org-title)
(defun iz-ebib-notes-create-org-title (key)
  (let ((title (or (ebib-db-get-field-value "title" key ebib--cur-db 'noerror 'unbraced 'xref) "(No Title)"))
        (year (or (ebib-db-get-field-value "year" key ebib--cur-db 'noerror 'unbraced 'xref) "????")))
    (format "%s (%s)" title year)))


(provide 'init-tex)
