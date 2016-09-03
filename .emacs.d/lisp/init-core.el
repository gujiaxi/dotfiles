;;; init-core.el --- Configs for core packages

;;; Commentary:
;;
;; First-load initial file for Emacs.

;;; Code:


;; cedet [built-in]
(require-package 'cedet)
(semantic-mode t)
(global-semantic-idle-scheduler-mode t)
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)


(provide 'init-core)
;;; init-core.el ends here