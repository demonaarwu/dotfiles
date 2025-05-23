;; init-org.el -- Configuration for Org Mode

(setq org-agenda-files '("~/org/"))

(defun insert-title ()
  (interactive)
  (insert "#+title: \n")
  (insert "#+date: " (format-time-string "%Y-%m-%d")))

(setq org-default-notes-file "~/org/inbox.org")

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link t)

(setq truncate-lines nil)

;; Org Capture Configuration
(setq org-capture-templates nil)

(defun get-words-learned-today ()
  (read-string "English Words: "))

(defun get-math-problems-done-today ()
  (read-string "Math Problems: "))

(setq aaw-habit-tracker
      '("h"
        "Habit Tracker"
        table-line
        (file+headline "habit-tracker.org" "Habit Tracker")
        "| %(format-time-string \"%Y-%m-%d\") | %(get-words-learned-today)| %(get-math-problems-done-today)|"))

(add-to-list 'org-capture-templates aaw-habit-tracker)

(use-package org-journal
  :ensure t
  :init
  (setq org-journal-dir "~/org/journal")
  (setq org-journal-file-type 'weekly))

(provide 'init-org)
;; init-org.el ends here
