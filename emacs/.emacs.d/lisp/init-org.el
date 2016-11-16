;; init-org.el --- Org-mode settings

;;; Commentary:
;;
;; In this file, many features of org such as org-agenda and
;; org-publish are involved.

;;; Code:

;; org
(require-package 'org-plus-contrib)
(setq org-src-fontify-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-export-html-style-include-scripts nil)
(setq org-export-html-style-include-default nil)
(setq org-startup-with-inline-images t)
(setq org-html-postamble t)
(setq org-html-postamble-format '(("en" "&copy; %a / %C")))
(setq org-priority-faces '((?A . (:foreground "red" :weight bold))
                           (?B . (:foreground "orange" :weight bold))
                           (?C . (:foreground "yellow" :wegith bold))))

;; org-agenda
(setq org-agenda-files (list (concat org-directory "org/agenda.org"))) 
(setq org-agenda-include-diary nil)

;; org-capture
(setq org-default-notes-file (concat org-directory "org/agenda.org"))
(setq org-capture-templates
      '(("a" "Appt" entry (file+headline "org/agenda.org" "Appointments")
         "* %?\n%t")
        ("t" "Task" entry (file+headline "org/agenda.org" "Tasks")
         "* TODO %?\n%U\n%a")
        ("n" "Note" entry (file+headline "org/notes.org" "Inbox")
         "* %?\n%U\n%a")
        ("j" "Journal" entry (file+datetree "org/journal.org")
         "* %?\n")
        ("w" "Wish" entry (file+headline "org/wish.org" "Wishlist")
         "* WANT %?\n%U")
        ("p" "Publish" plain (file "org/p-tweets.org")
         "*** %?\n%U\n-----")))

;; org-publish
(defun org-html-publish-index (prop)
  "Generate index.html."
  (let ((index-org (concat org-directory "org/index.org"))
        (export-dir (concat org-directory "html")))
    (org-html-publish-to-html nil index-org export-dir)))
(setq org-publish-timestamp-directory (concat user-emacs-directory "etc/org-timestamps/"))
(setq org-publish-project-alist
      `(("org"
         :base-directory ,(concat org-directory "org/")
         :base-extension "org"
         :publishing-directory ,(concat org-directory "html/")
         :publishing-function org-html-publish-to-html
         :exclude "^\\([^p]\\|p[^-]\\).*"
         :completion-function org-html-publish-index
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-preamble "<nav><a href='/'>↩</a></nav>"
         :html-head "<link rel='stylesheet' href='static/org.css' type='text/css'/>"
         :html-head-extra "<meta name='viewport' content='width=device-width'>"
         :html-mathjax "path:https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"
         :html-doctype "html5"
         :html-html5-fancy t
         :htmlized-source t
         :auto-sitemap t
         :sitemap-title ""
         :sitemap-filename "sitemap.org"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d  »  %t")
        ("static"
         :base-directory ,(concat org-directory "static/")
         :base-extension "css\\|js\\|pdf"
         :publishing-directory ,(concat org-directory "html/static/")
         :publishing-function org-publish-attachment)
        ("website"
         :components ("org" "static"))))

;; ox-latex
(setq org-latex-pdf-process '("pdflatex %f" "bibtex %b" "pdflatex %f" "pdflatex %f"))

;; org-babel
(setq org-src-preserve-indentation t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((calc . t)
   (ditaa . t)
   (emacs-lisp . t)
   (gnuplot . t)
   (haskell . t)
   (latex . t)
   (ledger . t)
   (perl . t)
   (plantuml . t)
   (python . t)
   (ruby . t)
   (R . t)
   (sh . t)))

;; htmlize
(require-package 'htmlize)

;; ox-bibtex
(require 'ox-bibtex)


(provide 'init-org)
;;; init-org.el ends here