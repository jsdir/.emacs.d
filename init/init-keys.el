(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))

(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-word (- arg)))

(global-set-key (kbd "C-DEL") 'backward-delete-word)
(global-set-key (kbd "M-DEL") 'backward-delete-word)

;;(dolist (cmd '(delete-word backward-delete-word))
;;  (put cmd 'CUA 'move))

(provide 'init-keys)
