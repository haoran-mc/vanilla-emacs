
(setq user-full-name "Haoran Liu")
(setq user-mail-address "haoran.mc@outlook.com")

(set-language-environment "UTF-8")
(global-auto-revert-mode t)      ;; load external changes automatically

(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)

(fset 'yes-or-no-p 'y-or-n-p)

(setq dired-recursive-deletes 'always)         ;; recursive delete
(setq dired-recursive-copies 'always)          ;; recursive copy
(put 'dired-find-alternate-file 'disabled nil) ;; common buffer

(save-place-mode t)                  ;; save cursor position
(setq-default tab-width 4)           ;; tab length
(setq-default indent-tabs-mode nil)  ;; use space rather tab

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq scroll-margin 5 scroll-consrvatively 10000)


(ido-mode)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 100)

(provide 'init-base)
