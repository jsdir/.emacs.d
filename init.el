(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Bootstrap
(require 'init-packages)

;; Customization
(require 'init-keys)
(require 'init-backup)
(require 'init-themes)
(require 'init-x)
(require 'init-common)
(require 'init-tabs)
(require 'init-project)
(require 'init-lint)
(require 'init-javascript)
(require 'init-neotree)
(require 'init-perspective)

(cua-mode t)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setenv "PATH" (concat (getenv "PATH") ":/home/jsdir/.nvm/v0.10.33/bin"))
(setq exec-path (append exec-path '("/home/jsdir/.nvm/v0.10.33/bin")))
