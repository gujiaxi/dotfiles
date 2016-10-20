;; init-markdown.el --- Markdown configs

;;; Commentary:
;;
;; For editting markdown fifles

;;; Code:


;; markdown-mode
(require-package 'markdown-mode)
(setq markdown-enable-math t)
(setq markdown-command "pandoc --mathjax -c http://tilde.works/~isaac/assets/md.css")


(provide 'init-markdown)
;;; init-markdown.el ends here