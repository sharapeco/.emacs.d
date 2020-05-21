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

;; カーソル
(custom-set-faces '(cursor (
  (((class color) (background dark)) (:background "#EEEEEE"))
  (((class color) (background light)) (:background "#555555"))
  (t ())
  )))
  
