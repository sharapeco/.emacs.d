;; 全体
(set-face-attribute 'default nil :background "#F3F2ED" :foreground "#2C2C2C")

;; カーソルは書き方がわからなかったので init.el に移した

;; エスケープ文字
(set-face-attribute 'escape-glyph nil :foreground "#C8C6BD")

;; 折り返し記号
(set-face-attribute 'fringe nil :foreground "#A8A69D" :background "#F3F2ED")
(set-face-attribute 'scroll-bar nil :foreground "#A8A69D" :background "#F3F2ED")

 ;; ミニバッファの M-x みたいなところ
(set-face-attribute 'minibuffer-prompt nil :foreground "#a18c72")

 ;; General
(set-face-attribute 'font-lock-comment-face nil :foreground "#7AA386")
(set-face-attribute 'font-lock-string-face nil :foreground "#4F834D")
(set-face-attribute 'font-lock-keyword-face nil :foreground "#3968A0")
(set-face-attribute 'font-lock-function-name-face nil :foreground "#242424")
(set-face-attribute 'font-lock-builtin-face nil :foreground "#BB556C")
(set-face-attribute 'font-lock-warning-face nil :foreground "#D34D28" :weight 'bold)

 ;; isearch
(set-face-attribute 'isearch nil :background "#ffe800" :foreground "#2C2C2C")
(set-face-attribute 'lazy-highlight nil :background "#fceeb8")
 
;; web-mode
(set-face-attribute 'web-mode-comment-face nil :inherit font-lock-comment-face)
(set-face-attribute 'web-mode-html-tag-face nil :inherit font-lock-keyword-face)
(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#BC556C")
(set-face-attribute 'web-mode-html-attr-equal-face nil :inherit 'web-mode-html-attr-name-face)
(set-face-attribute 'web-mode-html-attr-value-face nil :inherit 'web-mode-html-attr-name-face)

;; Helm
(set-face-attribute 'helm-source-header nil
  :family "Emberiza Sans" :height 150 :weight 'bold
  :background "#E4E0D0" :foreground "#333333"
  :box '(:line-width 4 :color "#E4E0D0"))

;; 非アクティブなバッファの背景色を変える
;(when (require 'hiwin nil t)
;  (hiwin-activate)
;  (set-face-background 'hiwin-face "#E2E1DC"))
