(require-package 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require-package 'yasnippet)
(yas-global-mode 1)

(require-package 'autopair)
(autopair-global-mode)

(global-linum-mode 1)
;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together

;; Workaround for linum
(ac-linum-workaround)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings 'super))

(provide 'init-common)
