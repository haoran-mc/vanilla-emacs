;; swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; evil
(define-key evil-normal-state-map (kbd "gN") 'elscreen-create)
(define-key evil-normal-state-map (kbd "gt") 'elscreen-next)
(define-key evil-normal-state-map (kbd "gT") 'elscreen-previous)

;; org
(if (not (equal window-system 'x))
    (with-eval-after-load 'org
      (define-key evil-normal-state-map (kbd "TAB") 'org-cycle)))
(define-key evil-normal-state-map (kbd "C-c &") 'org-mark-ring-goto)


(provide 'init-key)
