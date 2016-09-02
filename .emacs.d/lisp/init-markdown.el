;;---------------------------------------------------------------------------
;; markdown conf
;;---------------------------------------------------------------------------


;; markdown-mode
(require-package 'markdown-mode)
(setq markdown-enable-math t)
(setq markdown-command "pandoc -c http://kevinburke.bitbucket.org/markdowncss/markdown.css")


(provide 'init-markdown)
;;; init-markdown.el ends here