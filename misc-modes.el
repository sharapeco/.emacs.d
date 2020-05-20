;; text-mode
(add-hook 'text-mode-hook '(lambda()
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  (define-key text-mode-map "\C-i" 'self-insert-command)
  ))

;; markdown-mode
(add-hook 'markdown-mode-hook '(lambda()
  (setq tab-width 6)
  (setq indent-tabs-mode t)
  ))

;; emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook '(lambda()
  (setq tab-width 8)
  (setq indent-tabs-mode nil)
  ))

;; lisp-mode
(add-hook 'lisp-mode-hook '(lambda()
  (setq tab-width 8)
  (setq indent-tabs-mode nil)
  ))

;; sql-mode
(add-hook 'sql-mode-hook '(lambda()
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  ))
