(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Bootstrap
(require 'init-packages)

;; Customization
(require 'init-backup)
(require 'init-themes)
(require 'init-x)
(require 'init-common)
(require 'init-tabs)
(require 'init-project)
(require 'init-lint)
(require 'init-javascript)
(require 'init-neotree)

(cua-mode t)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setenv "PATH" (concat (getenv "PATH") ":/home/jsdir/.nvm/v0.10.33/bin"))
(setq exec-path (append exec-path '("/home/jsdir/.nvm/v0.10.33/bin")))





(defun move-text-internal (arg)
   (cond
    ((and mark-active transient-mark-mode)
     (if (> (point) (mark))
            (exchange-point-and-mark))
     (let ((column (current-column))
              (text (delete-and-extract-region (point) (mark))))
       (forward-line arg)
       (move-to-column column t)
       (set-mark (point))
       (insert text)
       (exchange-point-and-mark)
       (setq deactivate-mark nil)))
    (t
     (beginning-of-line)
     (when (or (> arg 0) (not (bobp)))
       (forward-line)
       (when (or (< arg 0) (not (eobp)))
            (transpose-lines arg))
       (forward-line -1)))))

(defun move-text-down (arg)
   "Move region (transient-mark-mode active) or current line
  arg lines down."
   (interactive "*p")
   (move-text-internal arg))

(defun move-text-up (arg)
   "Move region (transient-mark-mode active) or current line
  arg lines up."
   (interactive "*p")
   (move-text-internal (- arg)))

(global-set-key [\C-\S-up] 'move-text-up)
(global-set-key [\C-\S-down] 'move-text-down)

(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
