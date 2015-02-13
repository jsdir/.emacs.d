(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Bootstrap
(require 'init-packages)

;; Customization
(require 'init-themes)
(require 'init-x)

(cua-mode t)
