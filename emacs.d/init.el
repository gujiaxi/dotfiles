;;---------------------------------------------------------------------------
;; Main conf
;;---------------------------------------------------------------------------


;; BEGIN: auto-generated
(package-initialize)
(custom-set-variables
 '(package-selected-packages
   (quote (ess which-key wgrep web-mode theme-changer symon
           sunshine sr-speedbar solarized-theme smooth-scrolling
           smartparens smart-mode-line robe ranger rainbow-mode
           rainbow-delimiters quickrun projectile powerline
           nyan-mode multiple-cursors markdown-mode magit
           linum-relative ledger-mode js2-mode jdee indent-guide
           htmlize helm-bibtex general flycheck fifo-class
           evil-surround evil-search-highlight-persist
           evil-nerd-commenter evil-matchit dumb-jump dired+ deft
           company-math company-irony company-c-headers
           company-auctex company-anaconda color-identifiers-mode
           bing-dict bind-key bbdb avy auctex-latexmk anzu
           aggressive-indent))))
;; END: auto-generated

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-basic)
(require 'init-header)
;; built-in packages
(require 'init-org)
(require 'init-calendar)
(require 'init-prog)
(require 'init-gnus)
;; third-party packages
(require 'init-interface)
(require 'init-evil)
(require 'init-helm)
(require 'init-company)
(require 'init-git)
(require 'init-tex)
(require 'init-clang)
(require 'init-java)
(require 'init-ruby)
(require 'init-python)
(require 'init-markdown)
(require 'init-flycheck)
(require 'init-deft)
(require 'init-ledger)
(require 'init-dired)
(require 'init-ess)
(require 'init-bbdb)
(require 'init-web)
(require 'init-misc)
(require 'init-keys)


(provide 'init)
