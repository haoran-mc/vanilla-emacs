;;; init.el --- The main entry for emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inferior-ess-r-program "R")

(setq custom-file (locate-user-emacs-file "custom.el"))
(setq tramp-ssh-controlmaster-options
      "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(add-to-list 'load-path (locate-user-emacs-file "lisp"))
(setq debug-on-error init-file-debug)

(require 'init-ui)
(require 'init-base)
(require 'init-func)
(require 'init-org)
(require 'init-plug)
(require 'init-evil)
;; (require 'init-link)
(require 'init-key)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
