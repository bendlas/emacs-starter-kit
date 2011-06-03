(define-minor-mode dired-glance-mode ""
  :lighter "<glance>"
  :keymap '(([C-backspace] . exit-recursive-edit)
            ("v" . scroll-down)
            ("V" . scroll-up))
  (if dired-glance-mode
      (progn
        (toggle-read-only t))
    (toggle-read-only nil)))

(defun dired-glance ()
  (interactive)
  (save-window-excursion
   (dired-advertised-find-file)
   (dired-glance-mode t)
   (unwind-protect
       (recursive-edit)
     (dired-glance-mode '-)
     (bury-buffer))))

(defun super-powers ()
  "ultimate dired deletion mode
keys in dired mode to go through delete-flagged folders and 
selectively exclude from deletion"
  (local-set-key [C-return] 'dired-glance)
  (local-set-key "h" 'dired-hide-subdir)
  (local-set-key "-" 'dired-unmark)
  (local-set-key "=" 'dired-flag-file-deletion)
  (local-set-key "[" 'dired-prev-marked-file)
  (local-set-key "]" 'dired-next-marked-file)
  (local-set-key [C-backspace] 'dired-up-directory))
