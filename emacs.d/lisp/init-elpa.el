;;---------------------------------------------------------------------------
;; Find and load the correct package.el
;;---------------------------------------------------------------------------


;; Package sources
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;; Installed packages
(setq package-selected-packages '(ess which-key wgrep web-mode
      theme-changer symon sunshine sr-speedbar solarized-theme
      smooth-scrolling smartparens smart-mode-line robe ranger
      rainbow-mode rainbow-delimiters quickrun projectile
      powerline nyan-mode multiple-cursors markdown-mode magit
      linum-relative ledger-mode js2-mode jdee indent-guide
      htmlize helm-bibtex general flycheck fifo-class
      evil-surround evil-search-highlight-persist
      evil-nerd-commenter evil-matchit dumb-jump dired+ deft
      company-math company-irony company-c-headers company-auctex
      company-anaconda color-identifiers-mode bing-dict bind-key
      bbdb avy auctex-latexmk anzu aggressive-indent))

;; On-demand package installation
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (if (boundp 'package-selected-packages)
            ;; Record this as a package the user installed explicitly
            (package-install package nil)
          (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))


(provide 'init-elpa)
