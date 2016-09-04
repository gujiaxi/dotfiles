;;---------------------------------------------------------------------------
;; company conf
;;---------------------------------------------------------------------------


;; company
(require-package 'company)
(require 'company)
(setq company-idle-delay 0.3)
(setq company-minimum-prefix-length 1)
(setq company-dabbrev-downcase nil)
(setq company-selection-wrap-around t)
(setq company-show-numbers t)
;; enable company mode globally
(add-hook 'after-init-hook 'global-company-mode)
;; enable file name completion
(add-to-list 'company-backends 'company-files)
;; turn company off in some specific modes
(setq company-global-modes '(not eshell-mode))
;; nice key strokes for selecting
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; company-emoji
(require-package 'company-emoji)
(add-to-list 'company-backends 'company-emoji)


(provide 'init-company)
;;; init-company.el ends here