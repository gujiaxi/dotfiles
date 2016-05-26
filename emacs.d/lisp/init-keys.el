;;---------------------------------------------------------------------------
;; key bindings
;;---------------------------------------------------------------------------


;; general
(require-package 'general)
(load "general-autoloads")
(general-define-key :states '(normal visual)
                    "j" 'evil-next-visual-line
                    "k" 'evil-previous-visual-line)
(general-define-key :states '(normal)
                    :prefix ","
                    "u" 'winner-undo
                    "r" 'winner-redo
                    "s" 'avy-goto-char-2)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-s o") 'helm-occur)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;; org
(global-set-key (kbd "C-c t") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
;; deft
(global-set-key (kbd "C-c d") 'deft)
;; ranger
(global-set-key (kbd "C-c r") 'ranger)
;; helm-bibtex
(global-set-key (kbd "C-c b") 'helm-bibtex)
;; ebib
(global-set-key (kbd "C-c e") 'ebib)
;; sr-speedbar
(global-set-key [f6] 'sr-speedbar-toggle)
;; quickrun
(global-set-key (kbd "C-c q") 'quickrun)
;; multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)


(provide 'init-keys)
