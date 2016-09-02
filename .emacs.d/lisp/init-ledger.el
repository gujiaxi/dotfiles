;;---------------------------------------------------------------------------
;; ledger conf
;;---------------------------------------------------------------------------


;; ledger-mode
(require-package 'ledger-mode)
(add-to-list 'auto-mode-alist '("\\.ledger\\'" . ledger-mode))


(provide 'init-ledger)
;;; init-ledger.el ends here