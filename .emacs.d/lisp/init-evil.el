;;---------------------------------------------------------------------------
;; evil conf
;;---------------------------------------------------------------------------


;; evil
(require-package 'evil)
(evil-mode t)
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(evil-set-initial-state 'calendar-mode 'emacs)
(evil-set-initial-state 'deft-mode 'emacs)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'flycheck-error-list-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)
(evil-set-initial-state 'speedbar-mode 'emacs)
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