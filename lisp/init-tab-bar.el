

(setq tab-bar-border nil
      tab-bar-close-button nil
      tab-bar-back-button nil
      tab-bar-new-button nil
      tab-bar-format '(tab-bar-format-tabs +tab-bar-right)
      tab-bar-tab-name-format-function '+tab-bar-tab-format-function
      tab-bar-tab-name-truncated-max 10)

(defun +vc-branch-name ()
  (when vc-mode
    (propertize
     (replace-regexp-in-string
      "Git[-:]"
      ""
      (substring-no-properties vc-mode))
     'face
     'bold)))

(defun +tab-bar-right ()
  (let* ((p (cdr (project-current)))
         (vc (+vc-branch-name))
         (w (string-width (concat p " " vc))))
    (concat (propertize " " 'display `((space :align-to (- (+ right right-fringe right-margin) ,w 1))))
            p
            " "
            vc)))


(defun +tab-bar-tab-format-function (tab i)
  (let ((current-p (eq (car tab) 'current-tab)))
    (concat
     (propertize (concat
                  " "
                  (alist-get 'name tab)
                  " ")
                 'face
                 (funcall tab-bar-tab-face-function tab))
     " ")))




(provide 'init-tab-bar)
;;; init-tab-bar.el ends here.
