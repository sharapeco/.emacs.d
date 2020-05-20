;; ================================================================
;; emacsclient を使う
(require 'server)
(unless (server-running-p)
  (server-start))

;; ================================================================
;; パッケージマネージャ

;; パッケージの提供元として MELPA, Org, ELPA を追加する
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; 2013年ごろに使用していた auto-install
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
;(require 'auto-install)
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)

;; 手動インストールするパッケージ
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; ================================================================
;; 設定のリロードに使う

(load-file "~/.emacs.d/config.el")

;; ================================================================
;; スタートアップ

;; 起動時にバッファを左右に分割しとく
(if window-system
    (split-window-horizontally))


;; ================================================================
;; EOF

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (sass-mode web-mode stylus-mode smart-mode-line ov markdown-mode hiwin diminish))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#F3F2ED" :foreground "#2C2C2C"))))
 '(cursor ((((class color) (background dark)) (:background "#EEEEEE")) (((class color) (background light)) (:background "#555555")) (t nil)))
 '(escape-glyph ((t (:foreground "#C8C6BD"))))
 '(font-lock-builtin-face ((t (:foreground "#BB556C"))))
 '(font-lock-comment-face ((t (:foreground "#7AA386"))))
 '(font-lock-function-name-face ((t (:foreground "#242424"))))
 '(font-lock-keyword-face ((t (:foreground "#3968A0"))))
 '(font-lock-string-face ((t (:foreground "#4F834D"))))
 '(font-lock-warning-face ((t (:foreground "#D34D28" :weight bold))))
 '(fringe ((t (:foreground "#A8A69D" :background "#F3F2ED"))))
 '(isearch ((t (:background "#ffe800"))))
 '(lazy-highlight ((t (:background "#fceeb8"))))
 '(minibuffer-prompt ((t (:foreground "#a18c72"))))
 '(scroll-bar ((t (:foreground "#A8A69D" :background "#F3F2ED"))))
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
 '(web-mode-html-attr-equal-face ((t (:inherit web-mode-html-attr-name-face))))
 '(web-mode-html-attr-name-face ((t (:foreground "#BC556C"))))
 '(web-mode-html-attr-value-face ((t (:inherit web-mode-html-attr-name-face))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face)))))
