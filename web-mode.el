;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.s?html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq tab-width 4)
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-indent-style 4)
)
(add-hook 'web-mode-hook  'web-mode-hook)
(eval-after-load "web-mode"
  '(define-key web-mode-map (kbd "RET") 'newline-and-indent))

;; js-mode
(add-hook 'js-mode-hook
  '(lambda()
     (setq tab-width 4)
     (setq indent-tabs-mode t)
     (define-key js-mode-map "\r" 'newline-and-indent)
     ))

;; css-mode
;(require 'less-css-mode)
(defun my-css-mode-hook ()
  (setq indent-tabs-mode t)
  (setq tab-width 6)
  (setq css-indent-level 6)
  (setq css-indent-offset 6)
  (setq less-css-indent-level 6)
  (define-key css-mode-map "\r" 'newline-and-indent)
  )
(add-hook 'css-mode-hook 'my-css-mode-hook)
(add-hook 'less-css-mode-hook 'my-css-mode-hook)
