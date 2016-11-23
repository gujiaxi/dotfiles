;;; init-evil.el --- Evil and relevant packages

;;; Commentary:
;;
;; Enable `evil' for vim-like operations and do some tweaks using
;; relevant packages for evil.

;;; Code:


;; evil
(require-package 'evil)
;; Enable evil mode
(evil-mode t)
;; Move cursor across visual lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-visual-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-visual-state-map (kbd "k") 'evil-previous-visual-line)
;; Fallback to emacs-state for some modes
(mapc (lambda (my-mode) (evil-set-initial-state my-mode 'emacs))
      (list 'calendar-mode 'comint-mode 'completion-mode
            'deft-mode 'dired-mode 'eshell-mode 'eww-mode
            'eww-bookmark-mode 'flycheck-error-list-mode
            'help-mode 'inferior-ess-mode 'inferior-python-mode
            'newsticker-treeview-mode 'profiler-report-mode
            'quickrun/mode 'shell-mode 'speedbar-mode
            'special-mode 'TeX-output-mode))
;; Key bindings
(define-key evil-emacs-state-map (kbd "C-w") 'evil-window-map)
(global-set-key (kbd "<f5>") 'evil-make)

;; evil-nerd-commenter
(require-package 'evil-nerd-commenter)
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(with-eval-after-load "evil"
  (define-key evil-normal-state-map (kbd ", c SPC") 'evilnc-comment-or-uncomment-lines))

;; evil-surround
(require-package 'evil-surround)
(load "evil-surround-autoloads")
(global-evil-surround-mode t)

;; evil-matchit
(require-package 'evil-matchit)
(global-evil-matchit-mode t)

;; evil-search-highlight-persist
(require-package 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)


(provide 'init-evil)
;;; init-evil.el ends here