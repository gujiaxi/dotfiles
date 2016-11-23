;; init.el --- Main init file for Emacs

;;; Commentary:
;;
;; Main init file for Emacs.

;;; Code:


;; -------------------------------------------------------------------
;; Initialization
;; -------------------------------------------------------------------

(package-initialize)


;; -------------------------------------------------------------------
;; Basic settings
;; -------------------------------------------------------------------

;; Personal Infomation
(setq user-full-name "Jiaxi Gu")
(setq user-mail-address "imjiaxi@gmail.com")

;; set unicode encoding
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; no lockfile
(setq create-lockfiles nil)

;; backup and autosave
(setq backup-directory-alist `((".*" . ,(concat user-emacs-directory "backup"))))
(setq version-control t)
(setq delete-old-versions t)

;; no startup message
(setq inhibit-startup-message t)

;; no ring-bell
(setq ring-bell-function 'ignore)

;; nice frame
(when (display-graphic-p)
  (scroll-bar-mode 0)
  (tool-bar-mode 0)
  (menu-bar-mode 0))

;; nice scrolling
(setq scroll-margin 5)

;; enable y/n answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable syntax highlight
(global-font-lock-mode t)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

;; deltet selection
(delete-selection-mode t)

;; auto revert external changes
(global-auto-revert-mode t)

;; always load newest byte code
(setq load-prefer-newer t)

;; show which function current line belongs to
(which-function-mode t)

;; highlight current line
(global-hl-line-mode t)

;; display time in mode line
(display-time-mode t)
(setq display-time-24hr-format t)
(setq system-time-locale "C")

;; set frame title
(setq frame-title-format "%b")

;; set a larger kill ring
(setq kill-ring-max 200)

;; use system clipboard
(setq save-interprogram-paste-before-kill t)

;; dodge the mouse from cursor
(mouse-avoidance-mode 'animate)

;; suppress adding newline
(setq mode-require-final-newline nil)

;; confirm before quit
(setq confirm-kill-emacs 'yes-or-no-p)

;; suppress warnings
(setq find-file-suppress-same-file-warnings t)

;; set default font
(when (member "Input" (font-family-list))
  (set-face-attribute 'default nil :font "Input-12"))
(when (member "微软雅黑" (font-family-list))
  (set-fontset-font "fontset-default" 'unicode "微软雅黑"))

;; custom directory
(setq org-directory "~/Dropbox/Documents/EmacsFiles/")
(setq custom-file (concat user-emacs-directory "custom.el"))


;; -------------------------------------------------------------------
;; Built-in packages
;; -------------------------------------------------------------------

;; ----- plugin settings -----

;; calendar [built-in]
(setq calendar-location-name "Beijing, China")
(setq calendar-latitude 39.91)
(setq calendar-longitude 116.40)
(setq mark-diary-entries-in-calendar t)
(setq mark-holidays-in-calendar t)
(setq cal-html-directory (concat org-directory "calendar"))
(setq diary-file (concat org-directory "org/diary.org"))
(global-set-key (kbd "C-c k") 'calendar)

;; cedet [built-in]
(add-hook 'c-mode-hook 'semantic-mode)
(add-hook 'c++-mode-hook 'semantic-mode)
(add-hook 'objc-mode-hook 'semantic-mode)
(with-eval-after-load "semantic"
  (global-semantic-idle-scheduler-mode t)
  (global-semantic-idle-completions-mode t)
  (global-semantic-decoration-mode t)
  (global-semantic-highlight-func-mode t)
  (global-semantic-show-unmatched-syntax-mode t))

;; compile [built-in]
(global-set-key (kbd "<f6>") 'compile)

;; css-mode [built-in]
(setq css-indent-offset 2)

;; dired [built-in]
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

;; electric [built-in]
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; epa [built-in]
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; flyspell [built-in]
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'message-mode-hook 'flyspell-mode)

;; grep [built-in]
(global-set-key (kbd "C-c g") 'lgrep)

;; hideshow [built-in]
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; ispell [built-in]
(setenv "DICTIONARY" "en_US")
(setq isepell-program-name "hunspell")
(setq ispell-personal-dictionary (concat user-emacs-directory "ispell/hunspell_en_US"))

;; ido [built-in]
(ido-mode t)
(ido-everywhere t)

;; linum [built-in]
(mapc (lambda (hook) (add-hook hook 'linum-mode))
      '(bibtex-mode-hook LaTeX-mode-hook markdown-mode-hook
                         org-mode-hook prog-mode-hook text-mode-hook))

;; newsticker [built-in]
(setq newsticker-url-list-defaults nil)
(setq newsticker-retrieval-interval 0)
(setq newsticker-url-list '(("Hacker News" "https://fulltextrssfeed.com/hnrss.org/newest?points=200" nil nil nil)
                            ("一天世界" "https://blog.yitianshijie.net/feed/" nil nil nil)))

;; org [built-in]
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; paren [built-in]
(show-paren-mode t)

;; savehist [built-in]
(savehist-mode t)

;; recentf [built-in]
(setq recentf-max-saved-items 500)
(recentf-mode t)

;; reftex [built-in]
(setq reftex-plug-into-AUCTeX t)
(setq reftex-default-bibliography (list (concat org-directory "org/bib/main.bib")))

;; saveplace [built-in]
(save-place-mode t)

;; tramp [built-in]
(setq tramp-backup-directory-alist backup-directory-alist)

;; windmove [built-in]
(windmove-default-keybindings)

;; winner [built-in]
(winner-mode t)

;; zone [built-in]
(autoload 'zone-when-idle "zone" nil t)
(zone-when-idle 18000)

;; ----- key binding -----

(global-set-key (kbd "C-x k") 'kill-this-buffer)


;; -------------------------------------------------------------------
;; Package bootstrap
;; -------------------------------------------------------------------

;; ----- package archives -----

;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(setq package-archives '(("gnu"   . "https://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "https://elpa.zilongshanren.com/melpa/")
                         ("org" . "https://elpa.zilongshanren.com/org/")))

;; ----- use-package -----

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)


;; -------------------------------------------------------------------
;; Gnus
;; -------------------------------------------------------------------

;; I use it only for emails
(setq gnus-select-method
      '(nnimap ""
               (nnimap-address "imap.gmail.com")
               (nnimap-server-port 993)
               (nnimap-stream ssl)))
;; send email via SMTP
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)
;; more attractive summary view
(when window-system
  (setq gnus-sum-thread-tree-indent "  ")
  (setq gnus-sum-thread-tree-root "") ;; "● ")
  (setq gnus-sum-thread-tree-false-root "") ;; "◯ ")
  (setq gnus-sum-thread-tree-single-indent "") ;; "◎ ")
  (setq gnus-sum-thread-tree-vertical        "│")
  (setq gnus-sum-thread-tree-leaf-with-other "├─► ")
  (setq gnus-sum-thread-tree-single-leaf     "╰─► "))
(setq gnus-summary-line-format
      (concat "%0{%U%R%z%}"
              "%3{│%}" "%1{%d%}" "%3{│%}"
              "  " "%4{%-20,20f%}"
              "  " "%3{│%}"
              " " "%1{%B%}"
              "%s\n"))
;; directories
(setq gnus-use-dribble-file nil)
(setq gnus-startup-file (concat user-emacs-directory "gnus/.newsrc"))
(setq gnus-default-directory (concat user-emacs-directory "gnus"))
(setq gnus-home-directory (concat user-emacs-directory "gnus"))
(setq gnus-dribble-directory (concat user-emacs-directory "gnus"))
(setq gnus-directory (concat user-emacs-directory "gnus/news"))
(setq gnus-article-save-directory (concat user-emacs-directory "gnus/news"))
(setq gnus-kill-files-directory (concat user-emacs-directory "gnus/news"))
(setq gnus-agent-directory (concat user-emacs-directory "gnus/news/agent"))
(setq gnus-cache-directory (concat user-emacs-directory "gnus/news/cache"))
(setq gnus-cache-active-file (concat user-emacs-directory "gnus/news/cache/active"))
(setq message-directory (concat user-emacs-directory "gnus/mail"))
(setq message-auto-save-directory (concat user-emacs-directory "gnus/mail/drafts"))
(setq mail-source-directory (concat user-emacs-directory "gnus/mail/incoming"))
(setq nnfolder-directory (concat user-emacs-directory "gnus/mail/archive"))
(setq nnmail-message-id-cache-file (concat user-emacs-directory "gnus/.nnmail-cache"))
(setq nntp-marks-directory (concat user-emacs-directory "gnus/news/marks"))
(setq mml-default-directory (concat user-emacs-directory "gnus/attachments"))
;; gpg
(setq mm-verify-option 'always)
(setq mm-decrypt-option 'always)
(setq mm-encrypt-option 'guided)
;; misc
(setq gnus-permanently-visible-groups "INBOX")
(setq gnus-message-archive-group nil)
(setq gnus-show-threads t)
(setq gnus-thread-sort-functions '((not gnus-thread-sort-by-date)))
(setq gnus-summary-display-arrow t)
(setq gnus-activate-level 1)
(setq gnus-use-full-window nil)
(setq gnus-inhibit-startup-message t)
(setq gnus-novice-user nil)
(setq gnus-expert-user t)
(setq gnus-interactive-exit t)
(setq gnus-asynchronous t)
(setq gnus-use-dribble-file nil)
(setq gnus-always-read-dribble-file nil)
(setq gnus-preserve-marks nil)
(setq message-confirm-send t)
(setq message-from-style 'angles)
(setq message-signature "Regards,\nJiaxi Gu\n0x3F938F7B")
;; type `B m' to move entries
(setq gnus-move-split-methods
      '((".*" "INBOX")
        (".*" "[Gmail]/All Mail")
        (".*" "[Gmail]/Trash")))


;; -------------------------------------------------------------------
;; OrgMode
;; -------------------------------------------------------------------

;; org
(setq org-src-fontify-natively t)
(setq org-src-preserve-indentation t)
(setq org-confirm-babel-evaluate nil)
(setq org-export-html-style-include-scripts nil)
(setq org-export-html-style-include-default nil)
(setq org-startup-with-inline-images t)
(setq org-html-postamble t)
(setq org-html-postamble-format '(("en" "&copy; %a / %C")))
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "orange" :weight bold))
                           (?C . (:foreground "yellow" :wegith bold))))

;; org-agenda
(setq org-agenda-files (list (concat org-directory "org/agenda.org"))) 
(setq org-agenda-include-diary nil)

;; org-capture
(setq org-default-notes-file (concat org-directory "org/agenda.org"))
(setq org-capture-templates
      '(("a" "Appt" entry (file+headline "org/agenda.org" "Appointments")
         "* %?\n%t")
        ("t" "Task" entry (file+headline "org/agenda.org" "Tasks")
         "* TODO %?\n%U\n%a")
        ("n" "Note" entry (file+headline "org/notes.org" "Inbox")
         "* %?\n%U\n%a")
        ("j" "Journal" entry (file+datetree "org/journal.org")
         "* %?\n")
        ("w" "Wish" entry (file+headline "org/wish.org" "Wishlist")
         "* WANT %?\n%U")
        ("p" "Publish" plain (file "org/p-tweets.org")
         "*** %?\n%U\n-----")))

;; ox-latex
(setq org-latex-pdf-process '("pdflatex %f" "bibtex %b" "pdflatex %f" "pdflatex %f"))

;; org
(use-package org
  :ensure org-plus-contrib
  :after org
  :config
  ;; ox-bibtex
  (require 'ox-bibtex)
  ;; org-publish
  (defun org-html-publish-index (prop)
    "Generate index.html."
    (let ((index-org (concat org-directory "org/index.org"))
          (export-dir (concat org-directory "html")))
      (org-html-publish-to-html nil index-org export-dir)))
  (setq org-publish-timestamp-directory user-emacs-directory)
  (setq org-publish-project-alist
        `(("org"
           :base-directory ,(concat org-directory "org/")
           :base-extension "org"
           :publishing-directory ,(concat org-directory "html/")
           :publishing-function org-html-publish-to-html
           :exclude "^\\([^p]\\|p[^-]\\).*"
           :completion-function org-html-publish-index
           :html-head-include-default-style nil
           :html-head-include-scripts nil
           :html-preamble "<nav><a href='/'>&#8617;</a></nav>"
           :html-head "<link rel='stylesheet' href='static/org.css' type='text/css'/>"
           :html-head-extra "<meta name='viewport' content='width=device-width'>"
           :html-mathjax "path:https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"
           :html-doctype "html5"
           :html-html5-fancy t
           :htmlized-source t
           :auto-sitemap t
           :sitemap-title ""
           :sitemap-filename "sitemap.org"
           :sitemap-sort-files anti-chronologically
           :sitemap-file-entry-format "%d  »  %t")
          ("static"
           :base-directory ,(concat org-directory "static/")
           :base-extension "css\\|js\\|pdf"
           :publishing-directory ,(concat org-directory "html/static/")
           :publishing-function org-publish-attachment)
          ("website"
           :components ("org" "static"))))
  ;; org-babel
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((calc . t)
     (ditaa . t)
     (emacs-lisp . t)
     (gnuplot . t)
     (haskell . t)
     (latex . t)
     (ledger . t)
     (perl . t)
     (plantuml . t)
     (python . t)
     (ruby . t)
     (R . t)
     (sh . t))))

;; htmlize
(use-package htmlize
  :commands (htmlize-buffer))


;; -------------------------------------------------------------------
;; TeX
;; -------------------------------------------------------------------

;; auctex
(use-package auctex
  :mode ("\\.tex\\'" . TeX-latex-mode)
  :config
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
  (add-hook 'LaTeX-mode-hook 'flycheck-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (setq TeX-auto-save t)
  (setq TeX-parse-self t))

;; auctex-latexmk
(use-package auctex-latexmk
  :after tex
  :config
  (auctex-latexmk-setup)
  (setq auctex-latexmk-inherit-TeX-PDF-mode t))

;; company-math
(use-package company-math
  :after tex
  :config
  (add-to-list 'company-backends 'company-math-symbols-unicode))

;; company-auctex
(use-package company-auctex
  :after tex
  :config
  (company-auctex-init))


;; -------------------------------------------------------------------
;; Theme
;; -------------------------------------------------------------------

;; solarized-theme
(use-package solarized-theme
  :load-path "site-lisp/solarized-theme"
  :config
  (setq solarized-emphasize-indicators nil))

;; powerline
(use-package powerline
  :load-path "site-lisp/powerline"
  :config
  (powerline-default-theme)
  (setq powerline-default-separator 'utf-8))

;; theme-changer
(use-package theme-changer
  :if window-system
  :config
  (change-theme 'solarized-light 'solarized-dark))

;; -------------------------------------------------------------------
;; Evil
;; -------------------------------------------------------------------

;; evil
(use-package evil
  :demand t
  :config
  (evil-mode t)
  (mapc (lambda (my-mode) (evil-set-initial-state my-mode 'emacs))
        (list 'calendar-mode 'comint-mode 'completion-mode
              'deft-mode 'dired-mode 'eshell-mode 'eww-mode
              'eww-bookmark-mode 'flycheck-error-list-mode
              'help-mode 'inferior-ess-mode 'inferior-python-mode
              'newsticker-treeview-mode 'profiler-report-mode
              'quickrun/mode 'shell-mode 'speedbar-mode
              'special-mode 'TeX-output-mode))
  :bind
  (("<f5>" . evil-make)
   :map evil-normal-state-map
   ("j" . evil-next-visual-line)
   ("k" . evil-previous-visual-line)
   :map evil-visual-state-map
   ("j" . evil-next-visual-line)
   ("k" . evil-previous-visual-line)
   :map evil-emacs-state-map
   ("C-w" . evil-window-map)))

;; evil-nerd-commenter
(use-package evil-nerd-commenter
  :after evil
  :bind
  (("M-;" . evilnc-comment-or-uncomment-lines)
   :map evil-normal-state-map
   (", c SPC" . evilnc-comment-or-uncomment-lines)))

;; evil-surround
(use-package evil-surround
  :after evil
  :config (global-evil-surround-mode t))

;; evil-matchit
(use-package evil-matchit
  :after evil
  :config (global-evil-matchit-mode t))

;; evil-search-highlight-persist
(use-package evil-search-highlight-persist
  :config (global-evil-search-highlight-persist t))


;; -------------------------------------------------------------------
;; Helm
;; -------------------------------------------------------------------

;; helm
(use-package helm
  :config
  (require 'helm-config)
  (helm-mode)
  (helm-autoresize-mode t)
  (helm-adaptive-mode t)
  (helm-push-mark-mode t)
  (setq helm-split-window-in-side-p t)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-ff-file-name-history-use-recentf t)
  (setq helm-follow-mode-persistent t)
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  :bind
  (("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)
   ("C-s" . helm-occur)
   ("C-x b" . helm-mini)
   ("C-x C-f" . helm-find-files)))

;; helm-bibtex
(use-package helm-bibtex
  :requires helm
  :config
  (setq bibtex-completion-bibliography (list (concat org-directory "org/bib/main.bib")))
  (setq bibtex-completion-notes-symbol "✎")
  (setq bibtex-completion-notes-path (concat org-directory "org/research-notes.org"))
  (setq bibtex-completion-pdf-symbol "⌘")
  (setq bibtex-completion-library-path (list (concat org-directory "pdf")))
  (setq bibtex-completion-pdf-open-function (lambda (fpath) (call-process "evince" nil 0 nil fpath)))
  (setq bibtex-completion-cite-prompt-for-optional-arguments nil)
  (setq bibtex-completion-notes-template-one-file "\n* ${title} (${year})\n:PROPERTIES:\n:Custom_ID: ${=key=}\n:END:\n")
  :bind ("C-c b" . helm-bibtex))


;; -------------------------------------------------------------------
;; company
;; -------------------------------------------------------------------

;; company
(use-package company
  :config
  (setq company-idle-delay 0.3)
  (setq company-minimum-prefix-length 1)
  (setq company-dabbrev-downcase nil)
  (setq company-selection-wrap-around t)
  (setq company-show-numbers t)
  ;; enable company mode globally
  (global-company-mode)
  ;; enable file name completion
  (add-to-list 'company-backends 'company-files)
  ;; turn company off in some specific modes
  (setq company-global-modes '(not comint-mode eshell-mode org-mode))
  :bind
  (:map
   company-active-map
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous)))


;; -------------------------------------------------------------------
;; Git
;; -------------------------------------------------------------------

;; magit
(use-package magit
  :bind ("C-c m" . magit-status))


;; -------------------------------------------------------------------
;; Deft
;; -------------------------------------------------------------------

(use-package deft
  :config
  (setq deft-directory (concat org-directory "org"))
  (setq deft-extensions '("org" "md" "tex"))
  (setq deft-default-extension "org")
  (setq deft-recursive t)
  (setq deft-auto-save-interval nil)
  (setq deft-use-filename-as-title t)
  (setq deft-use-filter-string-for-filename t)
  :bind ("C-c d" . deft))


;; -------------------------------------------------------------------
;; C/C++
;; -------------------------------------------------------------------

;; irony
(use-package irony
  :config
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode))

;; company-irony
(use-package company-irony
  :after irony
  :config
  (add-to-list 'company-backends 'company-irony))


;; -------------------------------------------------------------------
;; Python
;; -------------------------------------------------------------------

;; anaconda-mode
(use-package anaconda-mode
  :after python
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))

;; company-anaconda
(use-package company-anaconda
  :after python
  :config
  (add-to-list 'company-backends 'company-anaconda))


;; -------------------------------------------------------------------
;; R
;; -------------------------------------------------------------------

(use-package ess
  :mode ("\\.[rR]\\'" . R-mode)
  :config
  (setq ess-ask-for-ess-directory nil)
  (setq ess-eval-visibly nil)
  (setq ess-history-file nil))


;; -------------------------------------------------------------------
;; Java
;; -------------------------------------------------------------------

(use-package jdee
  :mode ("\\.java\\'" . jdee-mode))


;; -------------------------------------------------------------------
;; Haskell
;; -------------------------------------------------------------------

;; haskell-mode
(use-package haskell-mode
  :mode ("\\.hs\\'" . haskell-mode))


;; -------------------------------------------------------------------
;; Ruby
;; -------------------------------------------------------------------

;; robe
(use-package robe
  :after ruby-mode
  :config
  (add-hook 'ruby-mode-hook 'robe-mode)
  (add-to-list 'company-backends 'company-robe))


;; -------------------------------------------------------------------
;; Web
;; -------------------------------------------------------------------

;; web-mode
(use-package web-mode
  :mode ("\\.phtml\\'" "\\.wp\\'" "\\.tmpl\\'" "\\.php\\'"
         "\\.module\\'" "\\.inc\\'" "\\.hbs\\'" "\\.tpl\\'"
         "\\.[gj]sp\\'" "\\.as[cp]x\\'" "\\.erb\\'" "\\.ftl\\'" 
         "\\.mustache\\'" "\\.djhtml\\'" "\\.html?\\'"
         "\\.xul?\\'")
  :config 
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

;; js2-mode
(use-package js2-mode
  :mode ("\\.js\\'" "\\.jsx?\\'")
  :config
  (setq js2-basic-offset 2))


;; -------------------------------------------------------------------
;; Markdown
;; -------------------------------------------------------------------

(use-package markdown-mode
  :mode ("\\.md\\'" "\\.markdown\\'")
  :config
  (setq markdown-enable-math t)
  (setq markdown-command "pandoc --mathjax -c http://tilde.works/~isaac/assets/md.css"))


;; -------------------------------------------------------------------
;; Other packages
;; -------------------------------------------------------------------

;; anzu
(use-package anzu
  :config
  (global-anzu-mode t))

;; aggressive-indent
(use-package aggressive-indent
  :config
  (global-aggressive-indent-mode t))

;; avy
(use-package avy
  :bind ("C-'" . avy-goto-char-2)
  :config
  ;; need tounlease this key in some cases
  (add-hook 'org-mode-hook (lambda () (local-unset-key (kbd "C-'")))))

;; bbdb
(use-package bbdb
  :config
  (add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus))

;; bing-dict
(use-package bing-dict
  :bind ("C-c t" . bing-dict-brief))

;; color-identifiers-mode
(use-package color-identifiers-mode
  :after prog-mode
  :config
  (add-hook 'prog-mode-hook 'color-identifiers-mode))

;; csv-mode
(use-package csv-mode
  :mode "\\.csv\\'")

;; dumb-jump
(use-package dumb-jump
  :after prog-mode
  :config
  (add-hook 'prog-mode-hook 'dumb-jump-mode))

;; expand-region
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;; eyebrowse
(use-package eyebrowse
  :config
  (eyebrowse-mode t))

;; flycheck
(use-package flycheck
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode))

;; highlight-thing
(use-package highlight-thing
  :config
  (add-hook 'prog-mode-hook 'highlight-thing-mode)
  (setq highlight-thing-delay-seconds 1.0)
  (setq highlight-thing-case-sensitive-p t))

;; indent-guide
(use-package indent-guide
  :config
  (add-hook 'prog-mode-hook 'indent-guide-mode)
  (setq indent-guide-char "¦"))

;; ledger-mode
(use-package ledger-mode
  :mode "\\.ledger\\'")

;; linum-relative
(use-package linum-relative
  :config
  (linum-relative-mode)
  (setq linum-relative-current-symbol ""))

;; multiple-cursors
(use-package multiple-cursors
  :bind ("C->" . mc/mark-next-like-this))

;; nyan-mode
(use-package nyan-mode
  :config
  (nyan-mode t))

;; persistent-scratch
(use-package persistent-scratch
  :config
  (persistent-scratch-setup-default))

;; projectile
(use-package projectile
  :config
  (projectile-global-mode))

;; quickrun
(use-package quickrun
  :bind ("C-c q" . quickrun))

;; rainbow-delimiters
(use-package rainbow-delimiters
  :after prog-mode
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; rainbow-mode
(use-package rainbow-mode
  :after css-mode
  :config
  (add-hook 'css-mode-hook 'rainbow-mode))

;; ranger
(use-package ranger
  :bind ("C-c r" . ranger))

;; smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (sp-use-smartparens-bindings))

;; smooth-scrolling
(use-package smooth-scrolling
  :config
  (smooth-scrolling-mode t))

;; sr-speedbar
(use-package sr-speedbar
  :config
  (setq speedbar-show-unknown-files t)
  (setq speedbar-enable-update t)
  (setq sr-speedbar-skip-other-window-p t)
  (setq sr-speedbar-auto-refresh t)
  :bind ("<f9>" . sr-speedbar-toggle))

;; symon
(use-package symon
  :config
  (setq symon-delay 33)
  (symon-mode))

;; undo-tree
(use-package undo-tree)

;; wgrep
(use-package wgrep)

;; which-key
(use-package which-key
  :config
  (which-key-mode))

;; yasnippet
(use-package yasnippet
  :config
  (yas-global-mode t))


;;; init.el ends here
