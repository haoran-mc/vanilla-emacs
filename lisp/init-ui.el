(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; (global-linum-mode nil)
;; (setq linum-format "")
(setq-default frame-title-format "Forming into my Dreamtale!")

;; (setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq initial-frame-alist (quote ((maximized . fullscreen))))

(global-hl-line-mode t)
(setq ring-bell-function 'ignore)

(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :font "Consolas")
  (set-face-attribute 'default nil :font "DejaVuSansMono Nerd Font Mono"))

(setq-default inhibit-startup-screen t)
;; (setq-default cursor-type 'bar)

;; (set-frame-parameter (selected-frame) 'alpha (list 85 60))
;; (add-to-list 'default-frame-alist (cons 'alpha (list 85 60)))

(setq default-frame-alist
      '((vertical-scroll-bars)
        (background-color . "grey15")
        (foreground-color . "grey")
        (cursor-color . "gold1")
        (mouse-color . "gold1")
        (right-fringe)
        (left-fringe)))

(set-face-background 'highlight "gray5")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
(set-cursor-color "wheat")
(set-mouse-color "wheat")


(provide 'init-ui)
