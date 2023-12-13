



(add-to-list 'load-path "~/Documents/emacs/local-packages/go-mode.el")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))


(provide 'init-golang)
;;; init-golang.el ends here
