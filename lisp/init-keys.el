
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))




;; here is C-? ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [remap move-beginning-of-line] #'mwim-beginning)
(global-set-key [remap move-end-of-line] #'mwim-end)




(global-set-key (kbd "s-J") 'lazycat/scroll-up-one-line)
(global-set-key (kbd "s-K") 'lazycat/scroll-down-one-line)












(global-set-key (kbd "C-<tab>") 'spacemacs/alternate-buffer)

(global-set-key (kbd "C-<return>") 'bookmark-jump)

;; b for buffer and bookmark
(global-set-key (kbd "C-c b x") 'vanilla/create-scratch-buffer)

(global-set-key (kbd "C-c f r") 'recentf-open-files)

(global-set-key (kbd "C-c s") 'tab-bar-switch-to-tab)

;; t for tab
(global-set-key (kbd "C-c t n") 'vanilla/create-new-tab-bar)
(global-set-key (kbd "C-c t c") 'tab-bar-close-tab)
(global-set-key (kbd "C-c t r") 'tab-bar-rename-tab)

;; u for user
(global-set-key (kbd "C-c u i") 'vanilla/indent-buffer)


(provide 'init-keys)
