;;; init-misc.el --- Configs for some packages

;;; Commentary:
;;
;; Configs for some packages including built-in and third-party

;;; Code:


;; --- built-in packages ---

;; bookmark [built-in]
(require-package 'bookmark)
(setq bookmark-default-file (concat user-emacs-directory "etc/bookmarks"))

;; calendar [built-in]
(require-package 'calendar)
(setq calendar-location-name "Beijing, China")
(setq calendar-latitude 39.91)
(setq calendar-longitude 116.40)
(setq mark-diary-entries-in-calendar t)
(setq mark-holidays-in-calendar t)
(setq cal-html-directory (concat org-directory "calendar"))
(setq diary-file (concat org-directory "org/diary.org"))
(global-set-key (kbd "C-c k") 'calendar)

;; compile [built-in]
(require-package 'compile)
(global-set-key (kbd "<f6>") 'compile)

;; dabbrev [built-in]
(require-package 'dabbrev)
(setq abbrev-file-name (concat user-emacs-directory "etc/abbrev_defs"))

;; dired [built-in]
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

;; electric [built-in]
(require-package 'electric)
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; epa [built-in]
(require-package 'epa)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; eshell [built-in]
(require-package 'eshell)
(setq eshell-directory-name (concat user-emacs-directory "etc/eshell"))

;; flyspell [built-in]
(require-package 'flyspell)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'message-mode-hook 'flyspell-mode)

;; grep [built-in]
(require-package 'grep)
(global-set-key (kbd "C-c g") 'lgrep)

;; hideshow [built-in]
(require-package 'hideshow)
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; ispell [built-in]
(require-package 'ispell)
(setenv "DICTIONARY" "en_US")
(setq isepell-program-name "hunspell")
(setq ispell-personal-dictionary (concat user-emacs-directory "etc/ispell/hunspell_en_US"))

;; ido [built-in]
(require-package 'ido)
(setq ido-save-directory-list-file (concat user-emacs-directory "etc/ido.last"))
(ido-mode t)
(ido-everywhere t)

;; linum [built-in]
(require-package 'linum)
(mapc (lambda (hook) (add-hook hook 'linum-mode))
      '(bibtex-mode-hook LaTeX-mode-hook markdown-mode-hook
                         org-mode-hook prog-mode-hook text-mode-hook))

;; org [built-in]
(require-package 'org)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; paren [built-in]
(require-package 'paren)
(show-paren-mode t)

;; savehist [built-in]
(require-package 'savehist)
(setq savehist-file (concat user-emacs-directory "etc/history"))
(savehist-mode t)

;; recentf [built-in]
(require-package 'recentf)
(setq recentf-max-saved-items 500)
(setq recentf-save-file (concat user-emacs-directory "etc/recentf"))
(recentf-mode t)

;; reftex [built-in]
(require-package 'reftex)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-default-bibliography (list (concat org-directory "org/bib/main.bib")))

;; saveplace [built-in]
(require-package 'saveplace)
(setq save-place-file (concat user-emacs-directory "etc/places"))
(save-place-mode t)

;; tramp [built-in]
(require-package 'tramp)
(setq tramp-backup-directory-alist backup-directory-alist)
(with-eval-after-load "tramp-cache"
  (setq tramp-persistency-file-name (concat user-emacs-directory "etc/tramp")))

;; url [built-in]
(require-package 'url)
(setq url-configuration-directory (concat user-emacs-directory "etc/url"))

;; windmove [built-in]
(require-package 'windmove)
(windmove-default-keybindings)

;; winner [built-in]
(require-package 'winner)
(winner-mode t)

;; zone [built-in]
(require-package 'zone)
(autoload 'zone-when-idle "zone" nil t)
(zone-when-idle 18000)


;;; --- third-party packages ---

;; anzu
(require-package 'anzu)
(global-anzu-mode t)

;; aggressive-indent
(require-package 'aggressive-indent)
(global-aggressive-indent-mode t)

;; avy
(require-package 'avy)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
;; prevent it bound externally
(add-hook 'org-mode-hook (lambda () (local-unset-key (kbd "C-'"))))

;; csv-mode
(require-package 'csv-mode)
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))

;; bing-dict
(require-package 'bing-dict)
(global-set-key (kbd "C-c t") 'bing-dict-brief)

;; color-identifiers-mode
(require-package 'color-identifiers-mode)
(add-hook 'prog-mode-hook 'color-identifiers-mode)

;; deft
(require-package 'deft)
(setq deft-directory (concat org-directory "org"))
(setq deft-extensions '("org" "md" "tex"))
(setq deft-default-extension "org")
(setq deft-recursive t)
(setq deft-auto-save-interval nil)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)
(global-set-key (kbd "C-c d") 'deft)

;; dumb-jump
(require-package 'dumb-jump)
(add-hook 'prog-mode-hook 'dumb-jump-mode)

;; expand-region
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; eyebrowse
(require-package 'eyebrowse)
(eyebrowse-mode t)

;; flycheck
(require-package 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)

;; haskell-mode
(require-package 'haskell-mode)

;; highlight-thing
(require-package 'highlight-thing)
(add-hook 'prog-mode-hook 'highlight-thing-mode)
(setq highlight-thing-delay-seconds 1.0)
(setq highlight-thing-case-sensitive-p t)

;; indent-guide
(require-package 'indent-guide)
(add-hook 'prog-mode-hook 'indent-guide-mode)
(setq indent-guide-char "¦")

;; ledger-mode
(require-package 'ledger-mode)
(add-to-list 'auto-mode-alist '("\\.ledger\\'" . ledger-mode))

;; linum-relative
(require-package 'linum-relative)
(linum-relative-mode)
(setq linum-relative-current-symbol "0")

;; magit
(require-package 'magit)
(global-set-key (kbd "C-c m") 'magit-status)

;; multiple-cursors
(require-package 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)

;; nyan-mode
(require-package 'nyan-mode)
(nyan-mode t)

;; persistent-scratch
(require-package 'persistent-scratch)
(setq persistent-scratch-save-file (concat user-emacs-directory "etc/persistent-scratch"))
(persistent-scratch-setup-default)

;; projectile
(require-package 'projectile)
(setq projectile-cache-file (concat user-emacs-directory "etc/projectile/projectile.cache"))
(setq projectile-known-projects-file (concat user-emacs-directory "etc/projectile/projectile-bookmarks.eld"))
(projectile-global-mode)

;; quickrun
(require-package 'quickrun)
(global-set-key (kbd "C-c q") 'quickrun)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; ranger
(require-package 'ranger)
(global-set-key (kbd "C-c r") 'ranger)

;; smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)
(sp-use-smartparens-bindings)

;; smooth-scrolling
(require-package 'smooth-scrolling)
(smooth-scrolling-mode t)

;; sr-speedbar
(require-package 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-enable-update t)
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-auto-refresh t)
(global-set-key (kbd "<f9>") 'sr-speedbar-toggle)

;; symon
(require-package 'symon)
(setq symon-delay 33)
(symon-mode)

;; undo-tree
(require-package 'undo-tree)

;; wgrep
(require-package 'wgrep)

;; which-key
(require-package 'which-key)
(which-key-mode)

;; yasnippet
(require-package 'yasnippet)
(yas-global-mode t)


;; --- key-bidndings ---

(global-set-key (kbd "C-x k") 'kill-this-buffer)


(provide 'init-misc)
;;; init-misc.el ends here
