;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org stuff configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq org-src-fontify-natively t)
(setq org-html-validation-link nil)

;; org-agenda
(setq org-agenda-files '("~/.org/org/todo.org")) 
(global-set-key (kbd "C-c a") 'org-agenda)

;; org-capture
(setq org-default-notes-file "~/.org/org/todo.org")
(global-set-key (kbd "C-c t") 'org-capture)

;; org-publish
(setq org-publish-project-alist
      '(("org"
         :base-directory "~/.org/org/"
         :base-extension "org"
         :publishing-directory "~/.org/html/"
         :publishing-function org-html-publish-to-html
         :exclude "^\\([^p]\\|p[^-]\\).*"
         :with-toc t
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-head "<link rel='stylesheet' href='./css/org.css' type='text/css'/><meta name='viewport' content='width=device-width, initial-scale=1'>"
         :html-mathjax "path:\"https://cdn.mathjax.org/mathjax/latest/MathJax.js\" align:\"left\""
         :auto-sitemap t
         :sitemap-title "Articles"
         :sitemap-filename "sitemap"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d >> %t")
        ("css"
         :base-directory "~/.org/css/"
         :base-extension "css"
         :publishing-directory "~/.org/html/css/"
         :publishing-function org-publish-attachment)
        ("website"
         :components ("org" "css"))))

(provide 'init-org)
