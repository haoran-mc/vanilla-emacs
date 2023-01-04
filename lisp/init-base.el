(setq user-full-name "L.M.haoran")
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
;; work with upper sentence
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(setq x-select-enable-clipboard t)             ;; shared with the system clipboard
(save-place-mode t)                  ;; save cursor position
(setq-default tab-width 4)           ;; tab length
(setq-default indent-tabs-mode nil)  ;; use space rather tab

;; (setq user-emacs-directory "~/.emacs.d/bin")
;; (setq save-place-file "~/.emacs.d/bin/saveplace")
;; (setq desktop-dirname "~/.emacs.d/bin/desktop-save")
;; (setq recentf-save-file "~/.emacs.d/bin/recentf")
;; (setq abbrev-file-name "~/.emacs.d/bin/abbrev_defs")
;; (setq default-major-mode 'text-mode)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq scroll-margin 5 scroll-consrvatively 10000)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(provide 'init-base)
