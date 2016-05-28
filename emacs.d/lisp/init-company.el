;;---------------------------------------------------------------------------
;; company conf
;;---------------------------------------------------------------------------


;; company
(require-package 'company)
(load "company-autoloads")
(add-hook 'prog-mode-hook 'company-mode)
(setq company-show-numbers t)
(setq company-idle-delay 0.2)
(setq company-dabbrev-downcase nil)
(setq company-minimum-prefix-length 1)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (add-to-list 'company-backends 'company-files))


(provide 'init-company)
