;;----------------------------------------------------------------------------
;; flymake conf
;;----------------------------------------------------------------------------

(eval-after-load "flymake"
  '(progn
     (defun flymake-get-tex-args (file-name)
       (list "chktex" (list "-q" "-v0" file-name)))
     ))

(provide 'init-flymake)
