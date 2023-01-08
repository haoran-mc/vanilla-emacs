(require 'org)
(setq org-src-fontify-natively t)
(setq org-M-RET-may-split-line '((header-line . nil)))
(setq org-ellipsis " ▼ ")
;; (setq org-ellipsis "..")
(setq org-return-follows-link nil)
(setq org-startup-folded 'content)
(setq org-hide-block-startup t)
(setq org-startup-indented t)
(setq org-fontify-todo-headline t)
(setq org-fontify-done-headline t)
(setq org-fontify-whole-heading-line t)
(setq org-fontify-quote-and-verse-blocks t)
(setq org-list-demote-modify-bullet '(("+" . "-") ("1." . "a.") ("-" . "+")))

;; open the link in full screen
(setq org-link-frame-setup
      '((vm . vm-visit-folder)
        (vm-imap . vm-visit-imap-folder)
        (gnus . gnus)
        (file . find-file)
        (wl . wl-frame)))

(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.0 :foreground "#FD971F"))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0 :foreground "#A6E22E"))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0 :foreground "#66D9EF"))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0 :foreground "#E6DB74"))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0 :foreground "#A1EFE4"))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.0 :foreground "#A6E22E"))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.0 :foreground "#F92672"))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.0 :foreground "#66D9EF")))))


(org-link-set-parameters
 "file" :face '(:foreground "#06d6de" :underline t)
 "https" :face '(:foreground "#9ec8da" :underline t)
 "http" :face '((((class color) (background light)) (:foreground "#66a8a8" :underline t))
                (((class color) (background dark)) (:foreground "#66a8a8" :underline t))
                (t (:underline t))))

(require 'org-tempo)

(provide 'init-org)
