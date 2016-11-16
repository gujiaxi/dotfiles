;; ivy
(require-package 'ivy)
(setq ivy-use-virtual-buffers t)
(setq ivy-initial-inputs-alist nil)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
;; swiper
(require-package 'swiper)
(global-set-key (kbd "C-s") 'swiper)
;; counsel
(require-package 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


(provide 'init-ivy)