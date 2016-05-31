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

;; bind-key
(require-package 'bind-key)
(load "bind-key-autoloads")
;; helm
(bind-key "M-x" 'helm-M-x)
(bind-key "M-y" 'helm-show-kill-ring)
(bind-key "M-s o" 'helm-occur)
(bind-key "C-x b" 'helm-mini)
(bind-key "C-x C-f" 'helm-find-files)
;; org
(bind-key "C-c a" 'org-agenda)
(bind-key* "C-c c" 'org-capture)
;; helm-bibtex
(bind-key "C-c b" 'helm-bibtex)
;; deft
(bind-key "C-c d" 'deft)
;; grep
(bind-key "C-c g" 'lgrep)
;; magit
(bind-key "C-c m" 'magit-status)
;; quickrun
(bind-key "C-c q" 'quickrun)
;; multiple-cursors
(bind-key "C->" 'mc/mark-next-like-this)
;; expand-region
(bind-key "C-=" 'er/expand-region)
;; sr-speedbar
(bind-key "<f6>" 'sr-speedbar-toggle)


(provide 'init-keys)
