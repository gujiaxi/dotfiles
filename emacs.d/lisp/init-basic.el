;;----------------------------------------------------------------------------
;; misc conf
;;----------------------------------------------------------------------------

;; personal Infomation
(setq user-full-name "Isaac G.")
(setq user-mail-address "imjiaxi@gmail.com")

;; set unicode encoding
(set-language-environment 'utf-8)

;; no ring-bell
(setq ring-bell-function 'ignore)

;; no backups and no auto-save
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; no startup message
(setq inhibit-startup-message t)

;; handy fix
(defalias 'yes-or-no-p 'y-or-n-p)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

;; GUI related
(when (display-graphic-p)
  (scroll-bar-mode 0)
  (tool-bar-mode 0)
  (menu-bar-mode 0))

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

(provide 'init-basic)
