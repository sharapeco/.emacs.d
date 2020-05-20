;; モードライン設定 smart-mode-line
;(defvar sml/theme 'light)
(sml/setup)

;; 列番号、行番号を表示
(column-number-mode t) 
(line-number-mode t)

;; 色と余白
(set-face-attribute 'mode-line nil
		    :family "Menlo"
		    :height 120
		    :foreground "#333333"
		    :background "#E4E0D0"
		    :box '(:line-width 6 :color "#E4E0D0")
		    :overline nil
		    :underline nil)

(set-face-attribute 'mode-line-inactive nil
		    :family "Menlo"
		    :height 120
		    :foreground "#777777"
		    :background "#D8D6CC"
		    :box '(:line-width 6 :color "#D8D6CC")
		    :overline nil
		    :underline nil)

;; エラー時に mode-line を flash
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-background 'mode-line)))
          (set-face-background 'mode-line "#ffbdff")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-background 'mode-line fg))
                               orig-fg))))
