;;---------------------------------------------------------------------------
;; calendar conf
;;---------------------------------------------------------------------------


;; calendar
(setq calendar-location-name "Beijing, China")
(setq calendar-latitude 39.91)
(setq calendar-longitude 116.40)
(setq mark-diary-entries-in-calendar t)
(setq mark-holidays-in-calendar t)
(setq cal-html-directory (concat org-directory "calendar"))

;; diary
(setq diary-file (concat org-directory "org/diary.org"))


(provide 'init-calendar)
;;; init-calendar.el ends here