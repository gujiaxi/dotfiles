;; init-clang.el --- Settings for C-family languages

;;; Commentary:
;;
;; Mainly for C, C++, Object-C.

;;; Code:


;; cedet [built-in]
(require-package 'cedet)
(add-hook 'c-mode-hook 'semantic-mode)
(add-hook 'c++-mode-hook 'semantic-mode)
(add-hook 'objc-mode-hook 'semantic-mode)
(with-eval-after-load "semantic"
  (setq semanticdb-default-save-directory (concat user-emacs-directory "etc/semanticdb"))
  (global-semantic-idle-scheduler-mode t)
  (global-semantic-idle-completions-mode t)
  (global-semantic-decoration-mode t)
  (global-semantic-highlight-func-mode t)
  (global-semantic-show-unmatched-syntax-mode t))

;; irony
(require-package 'irony)
(setq irony-user-dir (concat user-emacs-directory "etc/irony"))
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; company-irony
(require-package 'company-irony)
(add-to-list 'company-backends 'company-irony)


(provide 'init-clang)
;;; init-clang.el ends here