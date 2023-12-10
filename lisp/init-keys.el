


(global-set-key (kbd "C-<tab>") 'spacemacs/alternate-buffer)

(global-set-key (kbd "C-<return>") 'bookmark-jump)

(global-set-key (kbd "C-c f r") 'recentf-open-files)

(global-set-key (kbd "C-c s") 'tab-bar-switch-to-tab)

;; t for tab
(global-set-key (kbd "C-c t n") 'vanilla/create-new-tab-bar)
(global-set-key (kbd "C-c t c") 'tab-bar-close-tab)
(global-set-key (kbd "C-c t r") 'tab-bar-rename-tab)



(provide 'init-keys)
