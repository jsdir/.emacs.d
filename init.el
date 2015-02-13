(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Bootstrap
(require 'init-packages)

;; Customization
(require 'init-themes)
(require 'init-x)
(require 'init-lint)

(cua-mode t)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setenv "PATH" (concat (getenv "PATH") ":/home/jsdir/.nvm/v0.10.33/bin"))
(setq exec-path (append exec-path '("/home/jsdir/.nvm/v0.10.33/bin")))
