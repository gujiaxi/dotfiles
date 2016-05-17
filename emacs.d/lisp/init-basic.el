;;----------------------------------------------------------------------------
;; misc conf
;;----------------------------------------------------------------------------

;; personal Infomation
(setq user-full-name "Isaac Gu")
(setq user-mail-address "imjiaxi@gmail.com")

;; set unicode encoding
(set-language-environment 'utf-8)

;; no ring-bell
(setq ring-bell-function 'ignore)

;; no backups and no auto-save
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; version control
(setq version-control t)

;; no startup message
(setq inhibit-startup-message t)

;; handy fix
(defalias 'yes-or-no-p 'y-or-n-p)

;; globally enable syntax highlight
(global-font-lock-mode t)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

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

;; automatically refresh buffer
(setq auto-revert-mode t)

;; show line number and highlight line
(global-linum-mode t)
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

;; set default font
(when (member "Input" (font-family-list))
  (progn
    (set-face-attribute 'default nil :font "Input-12")
    (set-fontset-font "fontset-default" 'unicode "Microsoft YaHei")))

;; ido [built-in]
(ido-mode)
(ido-everywhere)

;; hideshow [built-in]
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; winner [built-in]
(winner-mode t)

;; zone [built-in]
(require 'zone)
(zone-when-idle 600)

;; recentf [built-in]
(setq recentf-max-saved-items 200)

;; saveplace [built-in]
(setq save-place t)

(provide 'init-basic)
