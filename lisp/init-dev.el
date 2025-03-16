

(require 'markdown-mode)


(require 'yasnippet)
(yas-global-mode 1)



(add-to-list 'load-path "~/Documents/emacs/local-packages/lsp-bridge")
(require 'lsp-bridge)

(defun my/yas-expand()
  (interactive)
  (if (use-region-p) ; indent region instead if it's active
      (indent-region (region-beginning) (region-end))
    (when (and (let ((indent (current-indentation)))
                 (funcall indent-line-function)
                 (= indent (current-indentation)))
               (looking-at "[[:space:]\n]")) ;; TODO or "[^[:word:]]"
      (setq this-command 'yas-expand)
      (call-interactively #'yas-expand))))



(defvar +lsp-bridge-jump-stack nil
  "Stack to store jump locations for +lsp-bridge-jump-back.")

(defun +lsp-bridge-jump ()
  "Fuses LSP-bridge find-function and dumb-jump intelligent jumps."
  (interactive)
  (cond
   ((eq major-mode 'emacs-lisp-mode)
    (let ((symb (function-called-at-point)))
      (when symb
        (push (point-marker) +lsp-bridge-jump-stack)
        (find-function symb))))
   (lsp-bridge-mode
    (lsp-bridge-find-def))
   (t
    (require 'dumb-jump)
    (dumb-jump-go))))

(defun +lsp-bridge-jump-back ()
  "Jump back to the previous location."
  (interactive)
  (cond
   ((eq major-mode 'emacs-lisp-mode)
    (if (null +lsp-bridge-jump-stack)
        (message "No previous location to jump back to.")
      (let ((marker (pop +lsp-bridge-jump-stack)))
        (if (marker-buffer marker)
            (progn
              (switch-to-buffer (marker-buffer marker))
              (goto-char (marker-position marker)))
          (message "Jump location is no longer available.")))))
   (lsp-bridge-mode
    (lsp-bridge-find-def-return))
   (t
    (require 'dumb-jump)
    (dumb-jump-back))))

(setq lsp-bridge-enable-hover-diagnostic t)
(setq acm-enable-quick-access nil)


(add-hook 'go-mode-hook (lambda () (lsp-bridge-mode 1)))
;; (add-hook 'go-mode-hook (lambda () (add-hook 'kill-buffer-hook (lambda () (lsp-bridge-mode -1)) nil t)))
(add-hook 'emacs-lisp-mode-hook (lambda () (lsp-bridge-mode 1)))
;; (add-hook 'emacs-lisp-mode-hook (lambda () (add-hook 'kill-buffer-hook (lambda () (lsp-bridge-mode -1)) nil t)))


(with-eval-after-load 'lsp-bridge
  (define-key lsp-bridge-mode-map (kbd "M-.") '+lsp-bridge-jump) ;; xref-find-definitions
  (define-key lsp-bridge-mode-map (kbd "M-,") '+lsp-bridge-jump-back) ;; xref-pop-marker-stack
  (define-key lsp-bridge-mode-map (kbd "M-?") 'lsp-bridge-find-references)) ;; xref-find-references




(provide 'init-dev)
;;; init-dev.el ends here
