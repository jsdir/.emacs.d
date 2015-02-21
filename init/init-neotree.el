(require-package 'neotree)
(setq neo-theme nil)

(defun neotree-find-project-root ()
  (interactive)
  (neotree-find (projectile-project-root)))

(setq projectile-switch-project-action 'neotree-projectile-action)

(progn
  (global-set-key (kbd "s-t") 'neotree-toggle)
  (global-set-key (kbd "s-r") 'neotree-find-project-root))

(provide 'init-neotree)
