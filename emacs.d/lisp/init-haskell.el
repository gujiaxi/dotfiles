;;---------------------------------------------------------------------------
;; haskell conf
;;---------------------------------------------------------------------------


;; haskell-mode
(require-package 'haskell-mode)

;; ghc
(require-package 'ghc)

;; flycheck-haskell
(require-package 'flycheck-haskell)
(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook 'flycheck-haskell-setup))

;; company-ghc
(require-package 'company-ghc)
(add-to-list 'company-backends 'company-ghc)


(provide 'init-haskell)
