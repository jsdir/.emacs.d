(require-package 'flycheck)
(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (web-mode))

(provide 'init-lint)
