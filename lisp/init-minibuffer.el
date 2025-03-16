

;;; minibuffer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq completion-auto-help t) ;; no need
;; (setq completion-show-help nil) ;; 好像是禁止展示 help 页面的

(setq minibuffer-eldef-shorten-default t) ;; shorten "(default ...)" to "[...]"
;; (setq minibuffer-electric-default-mode t) ;; may not need?
;; completion-ignore-case


;;; minibuffer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'vertico)
(vertico-mode 1)


(require 'consult)
(global-set-key [remap goto-line]              #'consult-goto-line)
(global-set-key [remap switch-to-buffer]       #'consult-buffer)
(global-set-key [remap yank-pop]               #'consult-yank-pop)
(global-set-key [remap apropos]                #'consult-apropos)
(global-set-key [remap bookmark-jump]          #'consult-bookmark)
(global-set-key [remap recentf-open-files]     #'consult-recent-file)
(global-set-key [remap multi-occur]            #'consult-multi-occur)
(global-set-key [remap repeat-complex-command] #'consult-complex-command)
(global-set-key [remap isearch-forward]        #'consult-line)
(global-set-key [remap projectile-ripgrep]     #'consult-ripgrep)



(require 'orderless)
(setq completion-styles '(orderless))

;; (add-to-list 'load-path "~/Documents/emacs/local-packages/helm")
;; (add-to-list 'load-path "~/Documents/emacs/local-packages/emacs-async")
;; (require 'helm)



(provide 'init-minibuffer)
;;; init-minibuffer.el ends here.
