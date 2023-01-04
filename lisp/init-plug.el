(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

(require 'cl)

(defvar predefeined-packages '(
                          no-littering
                          company
                          hungry-delete
                          evil
                          evil-leader
                          evil-nerd-commenter
                          ;; evil-tabs
                          evil-search-highlight-persist
                          smooth-scrolling
                          auto-yasnippet
                          ;; org-bullets
                          swiper    ;; C-s 优化搜索，C-f 优化，rencent 文件优化
                          counsel   ;; swiper 依赖
                          all-the-icons
                          ;; web-mode
                          ) "Default packages")

;; 这样使用 autoremove 就会根据上面 predefeined-package 中的包删除了
(setq package-selected-packages predefeined-packages)

;; 判断上面定义的 package 列表中 package 是否全部安装，如果全部安装就会返回 nil
(defun predefeined-packages-installed-p()
  (loop for pkg in predefeined-packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

;; 如果上面判断有没安装的 package，那么安装它
(unless (predefeined-packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg predefeined-packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; nolittering
(require 'no-littering)

;; company
(global-company-mode t)
(setq-default company-idle-delay 0.08)
(setq-default company-minimum-prefix-length 2)

;;hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;;smooth-scroll
(setq scroll-margin 5
      scroll-conservatively 9999
      scroll-step 1)

;;auto-yasnippet，自动生成org模板
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(add-hook 'org-mode-hook #'yas-minor-mode)

;; 先插入defaults-elisp.el中的snippet，然后调用autoinsert-yas-expand函数
;; autoinsert-yas-expand函数会先清空文件内容，然后再插入buffer-string
;; (yas-expand-snippet ";; Bah-da $1 Bing")  ;; buffer-string可由此句生成，是根据情况自定义的
;; 如果不(yas-expand-snippet ";; Bah-da $1 Bing")，那么就只是插入default中的内容
(defun autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

;;autoinsert
(require 'autoinsert)
;; Don't want to be prompted before insertion:
(setq auto-insert-query nil)
(setq auto-insert-directory (locate-user-emacs-file "templates"))
(add-hook 'find-file-hook 'auto-insert)
(auto-insert-mode 1)
(define-auto-insert "\\.el$" [ "~/.emacs.d/snippets/defaults-elisp.el" autoinsert-yas-expand ])
(define-auto-insert "\\.org$" ["~/.emacs.d/snippets/default-org.el" autoinsert-yas-expand])

;; org-bullets
;; (install-pkg 'org-bullets)
(require 'org-bullets)
(add-hook 'org-mode-hook #'(lambda () (org-bullets-mode 1)))
(if (equal window-system 'x)
    (add-hook 'org-mode-hook #'(lambda () (org-bullets-mode 1))))
(setq org-bullets-bullet-list '("☯" "◉" "○" "✿" "❀" "◇"))

;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; all-the-icons
(when (display-graphic-p)
  (require 'all-the-icons))

(provide 'init-plug)
