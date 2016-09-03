;;; init-misc.el --- Configs for some packages

;;; Commentary:
;;
;; Configs for some packages including built-in and third-party

;;; Code:


;;;-- built-in packages

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

;; electric [built-in]
(require-package 'electric)
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; grep [built-in]
(require-package 'grep)
(global-set-key (kbd "C-c g") 'lgrep)

;; hideshow [built-in]
(require-package 'hideshow)
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; ido [built-in]
(require-package 'ido)
(ido-mode t)
(ido-everywhere t)

;; linum [built-in]
(require-package 'linum)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'bibtex-mode-hook 'linum-mode)
(add-hook 'markdown-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)

;; org [built-in]
(require-package 'org)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; paren [built-in]
(require-package 'paren)
(show-paren-mode t)

;; savehist [built-in]
(require-package 'savehist)
(savehist-mode t)

;; recentf [built-in]
(require-package 'recentf)
(setq recentf-max-saved-items 500)
(recentf-mode t)

;; saveplace [built-in]
(require-package 'saveplace)
(setq-default save-place t)

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

;; bbdb
(require-package 'bbdb)
(with-eval-after-load "bbdb"
  (setq bbdb-file (concat org-directory "bbdb/contacts.bbdb"))
  (bbdb-initialize 'gnus 'mail 'message 'anniv 'pgp))

;; bing-dict
(require-package 'bing-dict)
(global-set-key (kbd "C-c b") 'bing-dict-brief)

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

;; flyspell
(setq ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

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

;; projectile
(require-package 'projectile)
(projectile-global-mode)

;; quickrun
(require-package 'quickrun)
(global-set-key (kbd "C-c q") 'quickrun)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; ranger
(require-package 'ranger)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
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

;; which-key
(require-package 'which-key)
(which-key-mode)

;; yasnippet
(require-package 'yasnippet)
(yas-global-mode t)

;; wgrep
(require-package 'wgrep)


(provide 'init-misc)
;;; init-misc.el ends here
