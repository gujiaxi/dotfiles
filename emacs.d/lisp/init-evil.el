;;---------------------------------------------------------------------------
;; evil conf
;;---------------------------------------------------------------------------


;; ace-jump-mode
(require-package 'ace-jump-mode)
(load "ace-jump-mode-autoloads")
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)

;; evil
(require-package 'evil)
(load "evil-autoloads")
(evil-mode t)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'speedbar-mode 'emacs)
(evil-set-initial-state 'deft-mode 'emacs)
(evil-set-initial-state 'flycheck-error-list-mode 'emacs)

;; evil-nerd-commenter
(require-package 'evil-nerd-commenter)
(load "evil-nerd-commenter-autoloads")
(evilnc-default-hotkeys)

;; evil-surround
(require-package 'evil-surround)
(load "evil-surround-autoloads")
(global-evil-surround-mode t)

;; evil-matchit
(require-package 'evil-matchit)
(load "evil-matchit-autoloads")
(global-evil-matchit-mode t)

;; evil-search-highlight-persist
(require-package 'evil-search-highlight-persist)
(load "evil-search-highlight-persist-autoloads")
(global-evil-search-highlight-persist t)


(provide 'init-evil)
