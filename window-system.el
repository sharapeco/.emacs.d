;; フォント設定
(load-file "~/.emacs.d/fonts.el")

;; 色設定
(load-file "~/.emacs.d/colors.el")

;; mode-line (ステータスが出てるとこ)
(load-file "~/.emacs.d/mode-line.el")

;; 終了時の状態を保存する
(desktop-save-mode 1)

;; カーソル移動を見た目で
(defun my-end-of-visual-line ()
  "見た目の上での行末にカーソルを移動する"
  (interactive)
  (let (curp endv endp)
    (setq curp (point))
    (end-of-visual-line)
    (setq endv (point))
    (goto-char curp)
    (end-of-line)
    (setq endp (point))
    (unless (equal endp endv) (goto-char (- endv 1)))
    t))

(global-set-key (kbd "C-a") 'beginning-of-visual-line)
(global-set-key (kbd "C-e") 'my-end-of-visual-line)

;; command+H でウィンドウを隠す
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)

;; メニューバーを消す
(tool-bar-mode -1)

;; 初期フレームの設定
(setq initial-frame-alist
      (append
       '((top . 40)    ; フレームの Y 位置(ピクセル数)
	 (left . 120)   ; フレームの X 位置(ピクセル数)
	 (width . 180)    ; フレーム幅(文字数)
	 (height . 52))   ; フレーム高(文字数)
       initial-frame-alist))

(setq default-frame-alist
      (append
       '((width . 90)
	 (height . 50))
       default-frame-alist))

;; 複数フレームを開かないようにする
(setq ns-pop-up-frames nil)

;; 分割の設定
(global-set-key (kbd "C-x 5") 'split-window-horizontally)
(global-set-key (kbd "C-x w") 'delete-frame)
(global-set-key [C-tab] 'other-frame)

;; 終了時の状態を保存する
;(add-hook 'kill-emacs-hook 'save-frame-position)

;; ================================================================
;; マウスの設定

;; ホイールでスクロールする行数
(setq mouse-wheel-scroll-amount
      '(1
	((shift) . 2)
	))
;; 速度を無視する
(setq mouse-wheel-progressive-speed nil)

;; スクロールしても見かけ上のカーソル位置を保つ
;(setq scroll-preserve-screen-position 'always)

;; スクロール設定
;; (defun scroll-down-with-lines ()
;;   "" (interactive) (scroll-down 1))
;; (defun scroll-up-with-lines ()
;;   "" (interactive) (scroll-up 1))
;; (global-set-key [wheel-up] 'scroll-down-with-lines)
;; (global-set-key [wheel-down] 'scroll-up-with-lines)
;; (global-set-key [double-wheel-up] 'scroll-down-with-lines)
;; (global-set-key [double-wheel-down] 'scroll-up-with-lines)
;; (global-set-key [triple-wheel-up] 'scroll-down-with-lines)
;; (global-set-key [triple-wheel-down] 'scroll-up-with-lines)
