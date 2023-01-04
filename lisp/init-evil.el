(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  ":" 'counsel-M-x
  "SPC" 'counsel-M-x
  "TAB" 'spacemacs/alternate-buffer

  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "bq" 'save-buffer-kill-terminal
  "bs" 'create-scratch-buffer

  "dj" 'dired-jump

  "ff" 'find-file
  "fr" 'recentf-open-files

  "go" 'evil-tabs-mode

  "odh" '(lambda() (interactive) (dired "C:/Users/haora/haoran/"))
  "oi"  '(lambda() (interactive) (find-file "C:/Users/haora/haoran/no/org/site/org/index.org"))

  "pf" 'counsel-git

  "rc" (lambda() (interactive) (find-file "~/.emacs.d/init.el"))
  "rb" 'bookmark-jump-other-window
  "rm" 'bookmark-set
  "rl" 'bookmark-bmenu-list

  "sp" 'helm-do-ag-project-root

  "tn" 'tab-new
  "tt" 'tab-bar-select-tab-by-name

  "xx" 'exchange-point-and-mark

  "wv" (lambda() (interactive) (split-window-right) (windmove-right))
  "ws" (lambda() (interactive) (split-window-below) (windmove-down))
  "z" 'evil-emacs-state)

;; evil
(evil-mode t) ;; global-evil-leader-mode before
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)

;; evil-nerd-commenter
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(evilnc-default-hotkeys)
(setq evil-want-C-u-scroll t)

;; evil-tabs
(global-evil-tabs-mode -1)
(setq elscreen-display-screen-number nil)
(setq elscreen-display-tab nil)
(setq elscreen-tab-display-control nil)
(setq elscreen-tab-display-kill-screen nil)

;; evil-search-highlight-parsist
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)
(evil-leader/set-key "RET" 'evil-search-highlight-persist-remove-all)

(provide 'init-evil)
