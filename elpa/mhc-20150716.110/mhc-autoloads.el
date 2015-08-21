;;; mhc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "mhc" "mhc.el" (21929 52460 0 0))
;;; Generated autoloads from mhc.el

(autoload 'mhc-goto-this-month "mhc" "\
*Show schedules of this month.
If HIDE-PRIVATE, private schedules are suppressed.

\(fn &optional HIDE-PRIVATE)" t nil)

(autoload 'mhc "mhc" "\
Show schedules of this month.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "mhc-ps" "mhc-ps.el" (21929 52460 0 0))
;;; Generated autoloads from mhc-ps.el

(autoload 'mhc-ps "mhc-ps" "\
*Create PostScript calendar with selected method.

\(fn &optional ARG)" t nil)

(autoload 'mhc-ps-preview "mhc-ps" "\
*Preview PostScript calendar.

\(fn YEAR MONTH &optional CATEGORY-PREDICATE)" t nil)

(autoload 'mhc-ps-print "mhc-ps" "\
*Print PostScript calendar.

\(fn YEAR MONTH &optional CATEGORY-PREDICATE)" t nil)

(autoload 'mhc-ps-save "mhc-ps" "\
*Save PostScript calendar.

\(fn YEAR MONTH FILE &optional CATEGORY-PREDICATE)" t nil)

(autoload 'mhc-ps-insert-buffer "mhc-ps" "\
*Insert PostScript calendar.

\(fn YEAR MONTH BUFFER &optional CATEGORY-PREDICATE)" t nil)

;;;***

;;;### (autoloads nil nil ("mhc-calendar.el" "mhc-calfw.el" "mhc-compat.el"
;;;;;;  "mhc-date.el" "mhc-day.el" "mhc-db.el" "mhc-draft.el" "mhc-e21.el"
;;;;;;  "mhc-face.el" "mhc-file.el" "mhc-guess.el" "mhc-header.el"
;;;;;;  "mhc-logic.el" "mhc-message.el" "mhc-minibuf.el" "mhc-misc.el"
;;;;;;  "mhc-parse.el" "mhc-pkg.el" "mhc-process.el" "mhc-record.el"
;;;;;;  "mhc-schedule.el" "mhc-summary.el" "mhc-sync.el" "mhc-vars.el")
;;;;;;  (21929 52460 965994 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; mhc-autoloads.el ends here
