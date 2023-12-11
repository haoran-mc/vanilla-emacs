


;;;###autoload
(defun vanilla/move-to-window-top ()
  "Move the current line and cursor to the top third of the window."
  (interactive)
  (recenter-top-bottom 0))

;;;###autoload
(defun vanilla/move-to-window-middle ()
  "Move the current line and cursor to the middle of the window."
  (interactive)
  (recenter-top-bottom))

;;;###autoload
(defun vanilla/move-to-window-bottom ()
  "Move the current line and cursor to the bottom third of the window."
  (interactive)
  (recenter-top-bottom -1))

;;;###autoload
(defun lazycat/scroll-up-one-line()
  "Scroll up one line."
  (interactive)
  (scroll-up 1))

;;;###autoload
(defun lazycat/scroll-down-one-line()
  "Scroll down one line."
  (interactive)
  (scroll-down 1))



(provide 'cursormove)
;;; cursormove.el
