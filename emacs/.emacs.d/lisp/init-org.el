;; init-org.el --- Org-mode settings

;;; Commentary:
;;
;; In this file, many features of org such as org-agenda and
;; org-publish are involved.

;;; Code:


;; org
(setq org-src-fontify-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-html-validation-link nil)
(setq org-export-html-style-include-scripts nil)
(setq org-export-html-style-include-default nil)
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "orange" :weight bold))
                           (?C . (:foreground "yellow" :wegith bold))))

;; org-agenda
(setq org-agenda-files (list (concat org-directory "org/agenda.org"))) 
(setq org-agenda-include-diary nil)

;; org-capture
(setq org-default-notes-file (concat org-directory "org/agenda.org"))
(setq org-capture-templates
      '(("a" "Appt" entry (file+headline (concat org-directory "org/agenda.org" )"Appointments")
         "* %?\n%t")
        ("t" "Task" entry (file+headline (concat org-directory "org/agenda.org" )"Tasks")
         "* TODO %?\n%U\n%a")
        ("n" "Note" entry (file+headline (concat org-directory "org/notes.org" )"Inbox")
         "* %?\n%U\n%a")
        ("j" "Journal" entry (file+datetree (concat org-directory "org/journal.org"))
         "* %?\n%U")
        ("w" "Wish" entry (file+headline (concat org-directory "org/wish.org" )"Wishlist")
         "* WANT %?\n%U")
        ("p" "Publish" plain (file (concat org-directory "org/p-tweets.org"))
         "*** %?\n%U\n-----")))

;; org-publish
(setq org-publish-project-alist
      `(("org"
         :base-directory ,(concat org-directory "org/")
         :base-extension "org"
         :publishing-directory ,(concat org-directory "html/")
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
         :htmlized-source t
         :auto-sitemap t
         :sitemap-title "Articles"
         :sitemap-filename "sitemap"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d  »  %t")
        ("css"
         :base-directory ,(concat org-directory "misc/")
         :base-extension "css"
         :publishing-directory ,(concat org-directory "html/css/")
         :publishing-function org-publish-attachment)
        ("js"
         :base-directory ,(concat org-directory "misc/")
         :base-extension "js"
         :publishing-directory ,(concat org-directory "html/js/")
         :publishing-function org-publish-attachment)
        ("website"
         :components ("org" "css" "js"))))

;; ox-latex
(setq org-latex-pdf-process '("pdflatex %f" "bibtex %b" "pdflatex %f" "pdflatex %f"))

;; org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t)
   (emacs-lisp . t)
   (gnuplot . t)
   (haskell . t)
   (latex . t)
   (perl . t)
   (plantuml . t)
   (python . t)
   (ruby . t)
   (R . t)
   (sh . t)))

;; htmlize
(require-package 'htmlize)

(provide 'init-org)
;;; init-org.el ends here