;; ================================================================
;; 動作設定

;; バックアップファイルを ~/.emacs.d/backup に作る
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
	    backup-directory-alist))

;; *scratch* の動作
(load-file "~/.emacs.d/scratch.el")

;; You can run the command ... with ...
;(setq suggest-key-bindings nil)

;; ================================================================
;; 編集

;; redo
(require 'redo+)
(global-set-key (kbd "C-_") 'redo)

;; キーバインド
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-r") 'query-replace)
(global-set-key (kbd "M-R") 'query-replace-regexp)
(global-set-key (kbd "C-c q") 'comment-region)
(global-set-key (kbd "C-M-_") 'indent-region)
(global-set-key (kbd "M-g") 'goto-line)

;; カーソル位置が行頭の場合、改行文字まで kill
(setq kill-whole-line t)

;; isearch でも C-h は backspace じゃ
(define-key isearch-mode-map (kbd "C-h") 'isearch-del-char)

;; リージョン選択中に yank した場合、リージョンの内容を上書きする
;; 一般的な selection でのペースト動作に近くなる
(delete-selection-mode t)

;; 書式設定
(setq-default tab-width 8)

;; 各種モード
(load-file "~/.emacs.d/web-mode.el")
(load-file "~/.emacs.d/misc-modes.el")

;; バッファの切り替えをブラウザと同じキーバインドで
(global-set-key (kbd "M-[") 'switch-to-prev-buffer)
(global-set-key (kbd "M-]") 'switch-to-next-buffer)

;; ================================================================
;; UI

;; カーソルをちかちかさせない
(blink-cursor-mode 0)

;; GUI用の設定
(if window-system (load-file "~/.emacs.d/window-system.el"))

;; option キーは option キーとして使いたい
(setq mac-option-modifier nil)
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;; ================================================================
;; Buffer Menu

(global-set-key (kbd "C-x C-b") 'buffer-menu)
(define-key Buffer-menu-mode-map "j" 'next-line)
(define-key Buffer-menu-mode-map "k" 'previous-line)
