;; PHP
(require 'cl)

;; (use-package phpactor :ensure t)
;; (use-package company-phpactor :ensure t)

;; (use-package php-mode
;;   ;;
;;   :hook ((php-mode . (lambda () (set (make-local-variable 'company-backends)
;;        '(;; list of backends
;;          company-phpactor
;;          company-files
;;          ))))))

(add-hook 'php-mode-hook '(lambda ()
  "Hooks for php-mode."
  (setq
   indent-tabs-mode t
   tab-width 6
   c-basic-offset 6)
  ;; ac-php
  (auto-complete-mode t)
  (eldoc-mode t)
  (require 'ac-php)
  (setq ac-sources '(ac-source-php ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (ac-php-core-eldoc-setup)
  (yas-global-mode 1)
  ;; phpactor
  ;; (make-local-variable 'eldoc-documentation-function)
  ;; (setq eldoc-documentation-function
  ;;       'phpactor-hover)
  ))

;; HTML
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.s?html?\\'" . web-mode))
(add-hook 'web-mode-hook '(lambda ()
  "Hooks for web-mode."
  (let ((IL 3))
    (setq
     indent-tabs-mode t
     tab-width IL
     web-mode-markup-indent-offset IL
     web-mode-css-indent-offset IL
     web-mode-code-indent-offset IL
     web-mode-indent-style IL))
  ))

;; JavaScript
(add-hook 'js-mode-hook '(lambda()
  "Hooks for js-mode."
  (setq
   indent-tabs-mode t
   tab-width 6
   js-indent-level 6)
  (define-key js-mode-map "\r" 'newline-and-indent)
  ))

;; CSS
;(require 'less-css-mode)
(defun my-css-mode-hook ()
  "Hooks for (css|less-css)-mode."
  (setq
   indent-tabs-mode t
   tab-width 6
   css-indent-level 6
   css-indent-offset 6
   less-css-indent-level 6)
  (define-key css-mode-map "\r" 'newline-and-indent)
  )
(add-hook 'css-mode-hook 'my-css-mode-hook)
(add-hook 'less-css-mode-hook 'my-css-mode-hook)
;(add-hook 'stylus-mode-hook 'my-css-mode-hook)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . less-css-mode))
