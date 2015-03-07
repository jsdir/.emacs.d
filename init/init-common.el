(require-package 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(setq-default
 ac-sources
 '(
   ac-source-yasnippet
   ac-source-imenu
   ac-source-abbrev
   ac-source-words-in-same-mode-buffers
   ac-source-files-in-current-dir
   ac-source-filename
   ))

(setq ac-auto-start 1)

;; ropemacs integration
;; (ac-ropemacs-initialize)
;; (add-hook 'python-mode-hook
;;           (lambda ()
;;             (setq ac-sources (append ac-sources 'ac-source-ropemacs))))

;; add coffee-mode to auto-complete
(add-to-list 'ac-modes 'coffee-mode)

(require-package 'yasnippet)
(yas-global-mode 1)
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))

(require-package 'autopair)
(autopair-global-mode)

(global-linum-mode 1)
;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together

;; Workaround for linum
(ac-linum-workaround)

(global-set-key (kbd "C-M-<left>")  'windmove-left)
(global-set-key (kbd "C-M-<right>") 'windmove-right)
(global-set-key (kbd "C-M-<up>")    'windmove-up)
(global-set-key (kbd "C-M-<down>")  'windmove-down)

(global-auto-revert-mode t)

(provide 'init-common)
