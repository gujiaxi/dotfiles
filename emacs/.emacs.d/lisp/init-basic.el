;;; init-basic.el --- Some basic configurations.

;;; Commentary:
;;
;; This is a general-purpose configuration without any third-party
;; packages.

;;; Code:


;; Personal Infomation
(setq user-full-name "Ku Chia-hsi")
(setq user-mail-address "imjiaxi@gmail.com")

;; set unicode encoding
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; no lockfile
(setq create-lockfiles nil)

;; backup and autosave
(setq backup-directory-alist `((".*" . ,(concat user-emacs-directory "etc/backup"))))
(setq version-control t)
(setq delete-old-versions t)

;; auto-save
(setq auto-save-list-file-prefix (concat user-emacs-directory "etc/auto-save/.saves-"))
(setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "etc/auto-save") t)))

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


(provide 'init-basic)
;;; init-basic.el ends here