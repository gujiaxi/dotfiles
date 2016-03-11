;;----------------------------------------------------------------------------
;; General: More convenient key definitions in emacs
;;----------------------------------------------------------------------------

;; general
(require-package 'general)
(load "general-autoloads")
(general-define-key :states '(normal visual)
                    "j" 'evil-next-visual-line
                    "k" 'evil-previous-visual-line)
(general-define-key :states '(normal)
                    :prefix ","
                    "h" 'evil-window-left
                    "j" 'evil-window-down
                    "k" 'evil-window-up
                    "l" 'evil-window-right
                    "0" 'evil-window-delete
                    "2" 'evil-window-split
                    "3" 'evil-window-vsplit
                    "1" 'delete-other-windows
                    "u" 'winner-undo
                    "r" 'winner-redo
                    "o" 'elscreen-create
                    "x" 'elscreen-kill
                    "n" 'elscreen-next
                    "p" 'elscreen-previous
                    "s" 'avy-goto-char-2)

(provide 'init-general)
