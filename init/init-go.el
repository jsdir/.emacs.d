(require-package 'go-mode)
;;(require-package 'flymake)
;;(require-package 'flymake-go)

(add-hook 'before-save-hook 'gofmt-before-save)

;;(add-to-list 'ac-modes 'go-mode)

;;(eval-after-load "go-mode"
;;  '(require 'flymake-go))

(provide 'init-go)
