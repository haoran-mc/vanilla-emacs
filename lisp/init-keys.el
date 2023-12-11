;; 可能还要增加一个 mini key 文件，用来放使用其他 emacs 的最小键配置，如「窗口配置」


(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)  ;; super 和 meta 谁的使用频率更大？谁的使用频率更大，将谁绑定到 command
  (setq mac-command-modifier 'meta))


(global-unset-key (kbd "M-z")) ;; zap-to-char like vim df?
(global-unset-key (kbd "C-\\")) ;; toggle-input-method one activation button, little use




;; here is C-? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [remap move-beginning-of-line] #'mwim-beginning)
(global-set-key [remap move-end-of-line] #'mwim-end)

(global-set-key (kbd "C-<tab>") 'spacemacs/alternate-buffer)

(global-set-key (kbd "C-<return>") 'bookmark-jump)
(with-eval-after-load 'org ;; eval below code after org (no need require org at start)
  (define-key org-mode-map (kbd "C-<return>") 'bookmark-jump))


(global-set-key (kbd "C-\\ h") 'windmove-left)
(global-set-key (kbd "C-\\ j") 'windmove-down)
(global-set-key (kbd "C-\\ k") 'windmove-up)
(global-set-key (kbd "C-\\ l") 'windmove-right)
(global-set-key (kbd "C-\\ H") 'vanilla/split-window-left-with-balance)
(global-set-key (kbd "C-\\ J") 'vanilla/split-window-below-with-balance)
(global-set-key (kbd "C-\\ K") 'vanilla/split-window-up-with-balance)
(global-set-key (kbd "C-\\ L") 'vanilla/split-window-right-with-balance)
(global-set-key (kbd "C-\\ =") 'vanilla/balance-windows)
(global-set-key (kbd "C-\\ c") 'delete-window)
(global-set-key (kbd "C-\\ m") 'delete-other-windows)
(global-set-key (kbd "C-\\ x") 'vanilla/exchange-split-window-position-structure)
(global-set-key (kbd "C-\\ |") 'vanilla/split-window-horizontally-instead)
(global-set-key (kbd "C-\\ -") 'vanilla/split-window-vertically-instead)



(global-set-key (kbd "M-z t") 'vanilla/move-to-window-top)
(global-set-key (kbd "M-z z") 'vanilla/move-to-window-middle)
(global-set-key (kbd "M-z b") 'vanilla/move-to-window-bottom)


(global-set-key (kbd "s-j") 'lazycat/scroll-up-one-line)
(global-set-key (kbd "s-k") 'lazycat/scroll-down-one-line)




;; b for buffer and bookmark
(global-set-key (kbd "C-c b x") 'vanilla/create-scratch-buffer)

(global-set-key (kbd "C-c f f") 'ido-find-file) ;; C-x C-f is too hard
(global-set-key (kbd "C-c f r") 'recentf-open-files)

(global-set-key (kbd "C-c s") 'tab-bar-switch-to-tab)

;; t for tab
(global-set-key (kbd "C-c t n") 'vanilla/create-new-tab-bar)
(global-set-key (kbd "C-c t c") 'tab-bar-close-tab)
(global-set-key (kbd "C-c t r") 'tab-bar-rename-tab)

;; u for user
(global-set-key (kbd "C-c u i") 'vanilla/indent-buffer)


(provide 'init-keys)
