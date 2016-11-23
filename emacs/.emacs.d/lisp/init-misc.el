;;; init-misc.el --- Configs for some packages

;;; Commentary:
;;
;; Configs for some packages including built-in and third-party

;;; Code:


;; --- built-in packages ---

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

;; cedet [built-in]
(require-package 'cedet)
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
(require-package 'compile)
(global-set-key (kbd "<f6>") 'compile)

;; css-mode [built-in]
(require-package 'css-mode)
(setq css-indent-offset 2)

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
(setq ispell-personal-dictionary (concat user-emacs-directory "ispell/hunspell_en_US"))

;; ido [built-in]
(require-package 'ido)
(ido-mode t)
(ido-everywhere t)

;; linum [built-in]
(require-package 'linum)
(mapc (lambda (hook) (add-hook hook 'linum-mode))
      '(bibtex-mode-hook LaTeX-mode-hook markdown-mode-hook
                         org-mode-hook prog-mode-hook text-mode-hook))

;; newsticker [built-in]
(require-package 'newsticker)
(setq newsticker-url-list-defaults nil)
(setq newsticker-retrieval-interval 0)
(setq newsticker-url-list '(("Hacker News" "https://fulltextrssfeed.com/hnrss.org/newest?points=200" nil nil nil)
                            ("一天世界" "https://blog.yitianshijie.net/feed/" nil nil nil)))

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

;; reftex [built-in]
(require-package 'reftex)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-default-bibliography (list (concat org-directory "org/bib/main.bib")))

;; saveplace [built-in]
(require-package 'saveplace)
(save-place-mode t)

;; tramp [built-in]
(require-package 'tramp)
(setq tramp-backup-directory-alist backup-directory-alist)

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

;; anaconda-mode
(require-package 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

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

;; company
(require-package 'company)
(require 'company)
(setq company-idle-delay 0.3)
(setq company-minimum-prefix-length 1)
(setq company-dabbrev-downcase nil)
(setq company-selection-wrap-around t)
(setq company-show-numbers t)
;; enable company mode globally
(add-hook 'after-init-hook 'global-company-mode)
;; enable file name completion
(add-to-list 'company-backends 'company-files)
;; turn company off in some specific modes
(setq company-global-modes '(not comint-mode eshell-mode org-mode))
;; nice key strokes for selecting
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; company-anaconda
(require-package 'company-anaconda)
(add-to-list 'company-backends 'company-anaconda)

;; company-irony
(require-package 'company-irony)
(add-to-list 'company-backends 'company-irony)

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

;; ess
(require-package 'ess)
(add-to-list 'auto-mode-alist '("\\.[rR]\\'" . R-mode))
(with-eval-after-load "ess"
  (setq ess-ask-for-ess-directory nil)
  (setq ess-eval-visibly nil)
  (setq ess-history-file nil))

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

;; irony
(require-package 'irony)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; jdee
(require-package 'jdee)

;; js2-mode
(require-package 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-mode))
(setq js2-basic-offset 2)

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

;; markdown-mode
(require-package 'markdown-mode)
(setq markdown-enable-math t)
(setq markdown-command "pandoc --mathjax -c http://tilde.works/~isaac/assets/md.css")

;; multiple-cursors
(require-package 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)

;; nyan-mode
(require-package 'nyan-mode)
(nyan-mode t)

;; persistent-scratch
(require-package 'persistent-scratch)
(persistent-scratch-setup-default)

;; projectile
(require-package 'projectile)
(projectile-global-mode)

;; quickrun
(require-package 'quickrun)
(global-set-key (kbd "C-c q") 'quickrun)

;; rainbow-delimiters
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; rainbow-mode
(require-package 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)

;; ranger
(require-package 'ranger)
(global-set-key (kbd "C-c r") 'ranger)

;; robe
(require-package 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-to-list 'company-backends 'company-robe)

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

;; web-mode
(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.wp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.module\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ftl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xul?\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

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
