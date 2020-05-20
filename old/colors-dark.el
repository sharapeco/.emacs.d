(custom-set-faces
 '(default ((t (:background "#322F2D" :foreground "#EEEEEE"))))
 ;;カーソル
 '(cursor
   (
    (((class color) (background dark)) (:background "#FFFFFF"))
    (((class color) (background light)) (:background "#999999"))
    (t ())
    ))

 ;; General
 '(font-lock-comment-face ((t (:foreground "#2EB184"))))
 '(font-lock-string-face ((t (:foreground "#93CE69"))))
 '(font-lock-keyword-face ((t (:foreground "#82ABFD"))))
 '(font-lock-function-name-face ((t (:foreground "#FFFFFF"))))
 '(font-lock-builtin-face ((t (:foreground "#FD83B7"))))
 '(font-lock-warning-face ((t (:foreground "#FF8040" :weight bold))))
 
 ;; web-mode
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-html-attr-name-face ((t (:foreground "#FD83B7"))))
 '(web-mode-html-attr-equal-face ((t (:inherit web-mode-html-attr-name-face))))
 '(web-mode-html-attr-value-face ((t (:inherit web-mode-html-attr-name-face))))
)
