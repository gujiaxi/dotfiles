;;--------------------------------------------------------------------------
;; Org conf
;;--------------------------------------------------------------------------


;; org
(require 'org)
(setq org-src-fontify-natively t)
(setq org-html-validation-link nil)
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "orange"))
                           (?C . (:foreground "yellow"))))

;; org-agenda
(setq org-agenda-files '("~/.org/org/todo.org")) 

;; org-capture
(setq org-default-notes-file "~/.org/org/todo.org")
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.org/org/todo.org" "Tasks")
         "* TODO %?\n%U\n%a")
        ("n" "Note" entry (file+headline "~/.org/org/notes.org" "Inbox")
         "* %?\n%U\n%a")
        ("j" "Journal" entry (file+datetree "~/.org/org/journal.org")
         "* %?\n%U")
        ("w" "Wish" entry (file+headline "~/.org/org/wish.org" "Wishlist")
         "* WANT %?\n%U")
        ("p" "Public" plain (file "~/.org/org/p-tweets.org")
         "*** %?\n%U\n-----")))

;; org-publish
(setq org-publish-project-alist
      '(("org"
         :base-directory "~/.org/org/"
         :base-extension "org"
         :publishing-directory "~/.org/html/"
         :publishing-function org-html-publish-to-html
         :exclude "^\\([^p]\\|p[^-]\\).*"
         :include ("index.org")
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-head "<link rel='stylesheet' href='./css/org.css' type='text/css'/>"
         :html-head-extra "<meta name='viewport' content='width=device-width'>"
         :html-mathjax "path:\"https://cdn.mathjax.org/mathjax/latest/MathJax.js\" align:\"left\""
         :html-doctype "html5"
         :html-html5-fancy t
         :auto-sitemap t
         :sitemap-title "Articles"
         :sitemap-filename "sitemap"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d  »  %t")
        ("css"
         :base-directory "~/.org/css/"
         :base-extension "css"
         :publishing-directory "~/.org/html/css/"
         :publishing-function org-publish-attachment)
        ("website"
         :components ("org" "css"))))

;; ox-latex
(setq org-latex-pdf-process '("pdflatex %f" "bibtex %b" "pdflatex %f" "pdflatex %f"))


(provide 'init-org)
