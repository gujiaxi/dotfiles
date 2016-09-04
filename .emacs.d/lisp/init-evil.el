;;---------------------------------------------------------------------------
;; evil conf
;;---------------------------------------------------------------------------


;; evil
(require-package 'evil)
;; Enable evil mode
(evil-mode t)
;; Move cursor across visual lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;; Fallback to emacs-state for some modes
(mapc (lambda (mode-name) (evil-set-initial-state mode-name 'emacs))
      '(calendar-mode deft-mode dired-mode flycheck-error-list-mode
        help-mode speedbar-mode))
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
(global-evil-surround-mode t)

;; evil-matchit
(require-package 'evil-matchit)
(global-evil-matchit-mode t)

;; evil-search-highlight-persist
(require-package 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)


(provide 'init-evil)
;;; init-evil.el ends here