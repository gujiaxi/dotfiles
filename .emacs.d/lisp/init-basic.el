;;--------------------------------------------------------------------------
;; misc conf
;;--------------------------------------------------------------------------


;; Personal Infomation
(setq user-full-name "Jiaxi Gu")
(setq user-mail-address "imjiaxi@gmail.com")

;; set unicode encoding
(set-language-environment 'utf-8)

;; no ring-bell
(setq ring-bell-function 'ignore)

;; no lockfile
(setq create-lockfiles nil)

;; backup and autosave
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; version control
(setq version-control t)
(setq delete-old-versions t)

;; no startup message
(setq inhibit-startup-message t)

;; handy fix
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable syntax highlight
(global-font-lock-mode t)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

;; deltet selection
(delete-selection-mode t)

;; GUI related
(when (display-graphic-p)
  (scroll-bar-mode 0)
  (tool-bar-mode 0)
  (menu-bar-mode 0))

;; set scroll-margin
(setq scroll-margin 5)

;; show parentheses
(show-paren-mode t)

;; show which function current line belongs to
(which-function-mode t)

;; highlight current line
(global-hl-line-mode t)

;; display time in mode line
(display-time-mode t)
(setq display-time-24hr-format t)
(setq system-time-locale "C")

;; set frame title
(setq frame-title-format "emacs@%b")

;; set a larger kill ring
(setq kill-ring-max 200)

;; avoid the mouse when typing
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
(setq org-directory "~/Dropbox/Documents/Emacs Files/")
(setq custom-file (concat user-emacs-directory "custom.el"))

;; ido [built-in]
(ido-mode t)
(ido-everywhere t)

;; windmove [built-in]
(windmove-default-keybindings)

;; hideshow [built-in]
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; winner [built-in]
(winner-mode t)

;; zone [built-in]
(require 'zone)
(zone-when-idle 18000)

;; recentf [built-in]
(recentf-mode t)
(setq recentf-max-saved-items 200)

;; saveplace [built-in]
(require 'saveplace)
(setq-default save-place t)

;; linum [built-in]
(setq linum-delay t)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'bibtex-mode-hook 'linum-mode)
(add-hook 'markdown-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)


(provide 'init-basic)