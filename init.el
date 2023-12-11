;;; init.el --- The main entry for emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; --debug-init implies `debug-on-error'.
(setq debug-on-error init-file-debug)

(require 'cl-lib)
(defun add-subdirs-to-load-path (search-dir)
  (interactive)
  (let* ((dir (file-name-as-directory search-dir)))
    (dolist (subdir
             (cl-remove-if
              #'(lambda (subdir)
                  (or
                   (not (file-directory-p (concat dir subdir)))
                   (member subdir '("." ".."
                                    "dist" "node_modules" "__pycache__"
                                    "RCS" "CVS" "rcs" "cvs" ".git" ".github"))))
              (directory-files dir)))
      (let ((subdir-path (concat dir (file-name-as-directory subdir))))
        (when (cl-some #'(lambda (subdir-file)
                           (and (file-regular-p (concat subdir-path subdir-file))
                                (member (file-name-extension subdir-file) '("el" "so" "dll"))))
                       (directory-files subdir-path))
          (add-to-list 'load-path subdir-path t))
        (add-subdirs-to-load-path subdir-path)))))

(let ((userdir (locate-user-emacs-file "lisp"))
      (extdir  (locate-user-emacs-file "site-lisp")))
  (add-subdirs-to-load-path (file-name-directory userdir))
  (add-subdirs-to-load-path (file-name-directory extdir)))
(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'windowop)
(require 'cursormove)
(require 'basic-tookit)
(require 'mwim)

(require 'init-ui)
(require 'init-base)
(require 'init-smex)
(require 'init-which_key)
;; (require 'init-funcs)
;; (require 'init-org)
(require 'init-keys)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
