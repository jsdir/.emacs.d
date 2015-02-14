(require-package 'perspective)
(persp-mode)
(require-package 'persp-projectile)

(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)

(provide 'init-perspective)
