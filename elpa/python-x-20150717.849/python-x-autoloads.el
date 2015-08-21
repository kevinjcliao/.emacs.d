;;; python-x-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "python-x" "python-x.el" (21929 52438 0 0))
;;; Generated autoloads from python-x.el

(defvar python-multiline-highlight python--vhl-available "\
When evaluating a statement which spans more than one line and less than a
screenful, highlight temporarily the evaluated region using `vhl/default-face'.
Requires `volatile-highlights' to be installed.")

(custom-autoload 'python-multiline-highlight "python-x" t)

(autoload 'python-shell-send-line "python-x" "\
Send the current line (with any remaining continuations) to the inferior Python process,
printing the result of the expression on the shell.

\(fn)" t nil)

(autoload 'python-shell-send-line-and-step "python-x" "\
Send the current line (with any remaining continuations) to the inferior Python process,
printing the result of the expression on the shell, then move on to the next
statement.

\(fn)" t nil)

(autoload 'python-shell-send-paragraph "python-x" "\
Send the current paragraph to the inferior Python process

\(fn)" t nil)

(autoload 'python-shell-send-paragraph-and-step "python-x" "\
Send the current paragraph to the inferior Python process, then move on to
the next.

\(fn)" t nil)

(autoload 'python-shell-send-region-or-paragraph "python-x" "\
Send the current region to the inferior Python process, if active.
Otherwise, send the current paragraph.

\(fn)" t nil)

(defvar python-section-delimiter "# ---" "\
Define the comment which marks the boundaries of the current code section.
See `python-shell-send-fold-or-section'.")

(custom-autoload 'python-section-delimiter "python-x" t)

(defvar python-section-highlight python--vhl-available "\
When evaluating a code fold/section with `python-shell-send-fold-or-section'
spanning more than one line, highlight temporarily the evaluated region using
`vhl/default-face'. Requires `volatile-highlights' to be installed.")

(custom-autoload 'python-section-highlight "python-x" t)

(autoload 'python-shell-send-fold-or-section "python-x" "\
Send the section of code at point to the inferior Python process, up to the
current fold or buffer boundaries.

A code \"section\" is delimited in both directions, and in order, by:

- The nearest section delimiter (see `python-section-delimiter') contained
  within the current fold.
- The nearest fold delimiter (see `folding-mode-marks-alist').
- The buffer boundaries.

`folding-mode' doesn't need to be enabled, but the same marks are used to
define code boundaries. See `folding-add-to-marks-list' for customization.
Nested folds and sections are included: section delimiters contained within a
nested fold are ignored.

When the region to be evaluated is longer than a single line and less than a
screenful, the region is temporarily highlighted according to
`python-section-highlight'.

\(fn)" t nil)

(autoload 'python-shell-send-dwim "python-x" "\
Send the current region to the inferior Python process, if active.
Otherwise, use `python-shell-send-current-fold-or-section'

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; python-x-autoloads.el ends here
