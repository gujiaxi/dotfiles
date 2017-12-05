;;; init.el --- jiaxi's configuration

;; Copyright (C) 2017 Jiaxi Gu

;; Author: Jiaxi Gu <imjiaxi@gmail.com>
;; Version: 20171204
;; Keywords: emacs, dotfile
;; Package-Requires: ((emacs "25.3"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; jiaxi's Emacs configuration
;;
;; the ultimate rule is KISS

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

;; stop backup and autosave
(setq make-backup-files nil)
(setq auto-save-default nil)

;; no startup message
(setq inhibit-startup-message t)

;; no ring-bell
(setq ring-bell-function 'ignore)

;; nice frame
(when (display-graphic-p)
  (scroll-bar-mode 0)
  (tool-bar-mode 0))

;; nice scrolling
(setq scroll-margin 5)

;; enable y/n answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable syntax highlight
(global-font-lock-mode t)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

;; turn off truncate lines
(setq-default truncate-lines t)

;; deltet selection
(delete-selection-mode t)

;; auto revert external changes
(global-auto-revert-mode t)

;; always load newest byte code
(setq load-prefer-newer t)

;; show which function current line belongs to
(which-function-mode)
(setq which-func-modes (list 'emacs-lisp-mode 'c++-mode 'python-mode))

;; highlight current line
(global-hl-line-mode t)

;; display time in mode line
(display-time-mode t)
(setq display-time-default-load-average nil)
(setq display-time-24hr-format t)
(setq system-time-locale "C")

;; set frame title
(setq frame-title-format "%b")

;; set a larger kill ring
(setq kill-ring-max 200)

;; use system clipboard
(setq save-interprogram-paste-before-kill t)

;; confirm before quit
(setq confirm-kill-emacs 'yes-or-no-p)

;; suppress warnings
(setq find-file-suppress-same-file-warnings t)

;; custom directory
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))


;; -------------------------------------------------------------------
;; Built-in packages
;; -------------------------------------------------------------------

;; ----- plugin settings -----

;; dired [built-in]
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq dired-listing-switches "-alh")

;; electric [built-in]
(electric-pair-mode t)
(electric-indent-mode t)
(electric-layout-mode t)

;; hideshow [built-in]
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; ido [built-in]
(ido-mode t)
(ido-everywhere t)

;; linum [built-in]
(mapc (lambda (hook) (add-hook hook 'linum-mode))
      (list 'bibtex-mode-hook 'ess-mode-hook 'LaTeX-mode-hook 'markdown-mode-hook
            'org-mode-hook 'prog-mode-hook 'text-mode-hook))

;; paren [built-in]
(show-paren-mode t)

;; savehist [built-in]
(savehist-mode t)

;; recentf [built-in]
(setq recentf-max-saved-items 500)
(recentf-mode t)

;; saveplace [built-in]
(save-place-mode t)

;; tramp [built-in]
(setq tramp-backup-directory-alist backup-directory-alist)

;; windmove [built-in]
(windmove-default-keybindings)

;; winner [built-in]
(winner-mode t)

;; ----- key binding -----

(global-set-key (kbd "C-x k") 'kill-this-buffer)


;; -------------------------------------------------------------------
;; Package bootstrap
;; -------------------------------------------------------------------

;; ----- package archives -----

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; ----- use-package -----

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t)


;; -------------------------------------------------------------------
;; OrgMode
;; -------------------------------------------------------------------

;; basic org options
(setq org-startup-with-inline-images nil)
(setq org-image-actual-width nil)
(setq org-src-fontify-natively t)
(setq org-src-preserve-indentation t)
(setq org-confirm-babel-evaluate nil)
(setq org-export-html-style-include-scripts nil)
(setq org-export-html-style-include-default nil)
(setq org-html-postamble t)
(setq org-refile-targets '((org-agenda-files :level . 1)))
(setq org-html-postamble-format '(("en" "&copy; %a / %C")))
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "orange" :weight bold))
                           (?C . (:foreground "yellow" :wegith bold))))

;; org-agenda
(setq org-agenda-include-diary nil)
(setq org-agenda-custom-commands
      '(("n" "Agenda and all TODOs"
         ((tags "PRIORITY={A}"
                ((org-agenda-skip-function '(org-agenda-skip-subtree-if 'todo 'done))
                 (org-agenda-overriding-header "High-priority:")))
          (agenda "" ((org-agenda-span (quote day))))
          (alltodo ""
                   ((org-agenda-skip-function '(or (org-agenda-skip-subtree-if 'scheduled)
                                                   (org-agenda-skip-subtree-if 'todo '("WAIT"))
                                                   (org-agenda-skip-subtree-if 'regexp "\\[#A\\]")))
                    (org-agenda-overriding-header "Others tasks:")))
          (todo "WAIT"
                ((org-agenda-skip-function '(org-agenda-skip-subtree-if 'regexp "\\[#A\\]"))
                 (org-agenda-overriding-header "Postponed tasks:")))))))

;; org
(use-package org
  :ensure org-plus-contrib
  :after org
  :config
  ;; org-babel
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((awk . t)
     (calc . t)
     (emacs-lisp . t)
     (latex . t)
     (python . t)
     (ruby . t)
     (R . t)
     (shell . t))))


;; -------------------------------------------------------------------
;; TeX
;; -------------------------------------------------------------------

;; auctex
(use-package tex
  :defer t
  :ensure auctex
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'TeX-output-mode 'emacs))
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq TeX-clean-confirm nil)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-to-list 'TeX-command-list '("Latexmk" "latexmk -pdf -quiet %s" TeX-run-command nil t :help "Run latexmk")))

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

;; ----- color theme -----

;; solarized-theme
(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))


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
              'dired-mode 'diary-fancy-display-mode
              'epa-info-mode 'epa-key-list-mode 'eshell-mode
              'eww-mode 'eww-bookmark-mode 'help-mode
              'inferior-python-mode 'Info-mode 'message-mode
              'newsticker-treeview-mode 'process-menu-mode
              'profiler-report-mode 'shell-mode 'speedbar-mode
              'special-mode))
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
  :bind
  (("M-;" . evilnc-comment-or-uncomment-lines)
   :map evil-normal-state-map
   (", c SPC" . evilnc-comment-or-uncomment-lines)))

;; evil-surround
(use-package evil-surround
  :config
  (global-evil-surround-mode t))

;; evil-matchit
(use-package evil-matchit
  :config
  (global-evil-matchit-mode t))


;; -------------------------------------------------------------------
;; Helm
;; -------------------------------------------------------------------

;; helm
(use-package helm
  :defer 3
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'helm-grep-mode 'emacs))
  (require 'helm-config)
  (helm-mode)
  (helm-autoresize-mode t)
  (helm-adaptive-mode t)
  (setq helm-split-window-in-side-p t)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-ff-file-name-history-use-recentf t)
  (setq helm-follow-mode-persistent t)
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-grep-ag-command "rg --color always --smart-case --no-heading --line-number %s %s %s")
  :bind
  (("M-x" . helm-M-x)
   ("M-y" . helm-show-kill-ring)
   ("C-s" . helm-occur)
   ("C-x b" . helm-mini)
   ("C-x C-f" . helm-find-files)
   ("C-x g" . helm-do-grep-ag)))


;; -------------------------------------------------------------------
;; Company
;; -------------------------------------------------------------------

;; company
(use-package company
  :init
  ;; enable company globally
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-idle-delay 0.3)
  (setq company-minimum-prefix-length 1)
  (setq company-dabbrev-downcase nil)
  (setq company-selection-wrap-around t)
  (setq company-show-numbers t)
  ;; enable file name completion
  (add-to-list 'company-backends 'company-files)
  ;; exclude annoying dabbrev completion
  (setq company-backends (delete 'company-dabbrev company-backends))
  ;; turn company off in some specific modes
  (setq company-global-modes '(not comint-mode eshell-mode org-mode))
  :bind
  (:map
   company-active-map
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous)))


;; -------------------------------------------------------------------
;; C/C++
;; -------------------------------------------------------------------

;; basic settings
(setq-default c-basic-offset 4)

;; comapny-c-headers
(use-package company-c-headers
  :after company
  :config
  (add-to-list 'company-backends 'company-c-headers))

;; cmake-mode
(use-package cmake-mode
  :config
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode)))


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

;; ess
(use-package ess
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'inferior-ess-mode 'emacs))
  (require 'ess-site)
  (setq ess-ask-for-ess-directory nil)
  (setq ess-eval-visibly nil)
  (setq ess-history-file nil))


;; -------------------------------------------------------------------
;; Markdown
;; -------------------------------------------------------------------

;; markdown-mode
(use-package markdown-mode
  :mode ("\\.md\\'" "\\.markdown\\'")
  :config
  (setq markdown-enable-math t)
  (setq markdown-command "pandoc --mathml")
  (setq markdown-css-paths '("http://tilde.works/~isaac/static/md.css"))
  (add-hook 'markdown-mode-hook 'flyspell-mode))


;; -------------------------------------------------------------------
;; Web
;; -------------------------------------------------------------------

;; web-mode
(use-package web-mode
  :mode (("\\.html?$" . web-mode)
         ("\\.jsx?$"  . web-mode)
         ("\\.php$"   . web-mode)
         ("\\.s?css$"  . web-mode)))


;; -------------------------------------------------------------------
;; Other packages
;; -------------------------------------------------------------------

;; aggressive-indent
(use-package aggressive-indent
  :config
  (global-aggressive-indent-mode t)
  (add-to-list 'aggressive-indent-excluded-modes 'latex-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'org-mode))

;; avy
(use-package avy
  :config
  (setq avy-background t)
  :bind* ("C-'" . avy-goto-char-2))

;; dumb-jump
(use-package dumb-jump
  :defer 3
  :after prog-mode
  :config
  (add-hook 'prog-mode-hook 'dumb-jump-mode))

;; expand-region
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;; eyebrowse
(use-package eyebrowse
  :config
  (eyebrowse-mode t)
  (setq eyebrowse-mode-line-separator ",")
  (set-face-attribute 'eyebrowse-mode-line-active nil :inherit font-lock-warning-face))

;; flycheck
(use-package flycheck
  :defer 2
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'flycheck-error-list-mode 'emacs))
  (add-hook 'after-init-hook 'global-flycheck-mode))

;; linum-relative
(use-package linum-relative
  :config
  (linum-relative-mode)
  (setq linum-relative-current-symbol ""))

;; projectile
(use-package projectile
  :defer 2
  :config
  (projectile-global-mode))

;; quickrun
(use-package quickrun
  :config
  (with-eval-after-load 'evil
    (evil-set-initial-state 'quickrun--mode 'emacs))
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

;; smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (sp-use-smartparens-bindings))

;; sr-speedbar
(use-package sr-speedbar
  :config
  (setq speedbar-show-unknown-files t)
  (setq speedbar-enable-update t)
  (setq sr-speedbar-skip-other-window-p t)
  (setq sr-speedbar-auto-refresh t)
  :bind ("<f9>" . sr-speedbar-toggle))

;; which-key
(use-package which-key
  :config (which-key-mode))

;; yasnippet
(use-package yasnippet
  :defer 2
  :config (yas-global-mode t))


;; -------------------------------------------------------------------
;; Compatibility
;; -------------------------------------------------------------------

(setq python-shell-interpreter "python3")
(setq org-babel-python-command "python3")
