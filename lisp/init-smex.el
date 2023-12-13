(require 'smex)

(smex-initialize)

(defun smex+ ()
  (interactive)
  (let ((resize-mini-windows nil))
    (smex)
    ))

;; (global-set-key (kbd "M-x") 'smex+)

(provide 'init-smex)
;;; init-smex.el ends here
