(custom-set-faces
 '(default ((t (:background "#F3F2ED" :foreground "#2C2C2C"))))
 ;; カーソル
 '(cursor
   (
    (((class color) (background dark)) (:background "#EEEEEE"))
    (((class color) (background light)) (:background "#555555"))
    (t ())
    ))
 ;; エスケープ文字
 '(escape-glyph ((t (:foreground "#C8C6BD"))))
 ;; 折り返し記号
 '(fringe ((t (:foreground "#A8A69D" :background "#F3F2ED"))))
 '(scroll-bar ((t (:foreground "#A8A69D" :background "#F3F2ED"))))

 ;; ミニバッファの M-x みたいなところ
 '(minibuffer-prompt ((t (:foreground "#a18c72"))))

 ;; General
 '(font-lock-comment-face ((t (:foreground "#7AA386"))))
 '(font-lock-string-face ((t (:foreground "#4F834D"))))
 '(font-lock-keyword-face ((t (:foreground "#3968A0"))))
 '(font-lock-function-name-face ((t (:foreground "#242424"))))
 '(font-lock-builtin-face ((t (:foreground "#BB556C"))))
 '(font-lock-warning-face ((t (:foreground "#D34D28" :weight bold))))

 ;; isearch
 '(isearch ((t (:background "#ffe800"))))
 '(lazy-highlight ((t (:background "#fceeb8"))))
 
 ;; web-mode
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-html-attr-name-face ((t (:foreground "#BC556C"))))
 '(web-mode-html-attr-equal-face ((t (:inherit web-mode-html-attr-name-face))))
 '(web-mode-html-attr-value-face ((t (:inherit web-mode-html-attr-name-face))))
)

;; 非アクティブなバッファの背景色を変える
;(when (require 'hiwin nil t)
;  (hiwin-activate)
;  (set-face-background 'hiwin-face "#E2E1DC"))
