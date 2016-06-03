;;---------------------------------------------------------------------------
;; evil conf
;;---------------------------------------------------------------------------


;; ace-jump-mode
(require-package 'ace-jump-mode)

;; evil
(require-package 'evil)
(evil-mode t)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'speedbar-mode 'emacs)
(evil-set-initial-state 'deft-mode 'emacs)
(evil-set-initial-state 'flycheck-error-list-mode 'emacs)

;; evil-nerd-commenter
(require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)

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
