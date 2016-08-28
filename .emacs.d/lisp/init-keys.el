;;---------------------------------------------------------------------------
;; key bindings
;;---------------------------------------------------------------------------


;; general
(require-package 'general)
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
;; org
(bind-key "C-c a" 'org-agenda)
(bind-key* "C-c c" 'org-capture)
;; helm-bibtex
(bind-key "C-c b" 'helm-bibtex)
;; deft
(bind-key "C-c d" 'deft)
;; ebib
(bind-key "C-c e" 'ebib)
;; grep
(bind-key "C-c g" 'lgrep)
;; magit
(bind-key "C-c m" 'magit-status)
;; calendar
(bind-key "C-c k" 'calendar)
;; ranger
(bind-key "C-c r" 'ranger)
;; quickrun
(bind-key "C-c q" 'quickrun)
;; multiple-cursors
(bind-key "C->" 'mc/mark-next-like-this)
;; expand-region
(bind-key "C-=" 'er/expand-region)
;; bing-dict
(bind-key "C-c t" 'bing-dict-brief)
;; sr-speedbar
(bind-key "<f9>" 'sr-speedbar-toggle)
;; evil
(bind-key "<f5>" 'evil-make)
;; compile [built-in]
(bind-key "<f6>" 'compile)


(provide 'init-keys)
