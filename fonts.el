;; -*- coding: utf-8 -*-

(set-face-attribute 'default nil
		    :family "Emberiza Sans 12"
		    :height 135)

(setq-default line-spacing 2)

(set-face-attribute 'mode-line nil
		    :family "Menlo"
		    :height 125
		    :overline nil
		    :underline nil)

;; 日本語
(let* ((fs (font-spec :family "ヒラギノ角ゴ ProN")))
  (set-fontset-font t 'japanese-jisx0208 fs)
  (set-fontset-font t 'japanese-jisx0208-1978 fs)
  (set-fontset-font t 'japanese-jisx0212 fs)
  (set-fontset-font t 'japanese-jisx0213-1 fs)
  (set-fontset-font t 'japanese-jisx0213-2 fs)
  (set-fontset-font t 'japanese-jisx0213.2004-1 fs)
  (set-fontset-font t 'jisx0201 fs)
  (set-fontset-font t 'kana fs))
(add-to-list 'face-font-rescale-alist '(".*hiragino.*" . 1.05))

;; 一時的に monospace に切り替える
(defun use-font-mono ()
  "Set font to monospace"
  (interactive)
  (setq buffer-face-mode-face '(:family "Menlo" :height 125))
  (buffer-face-mode)
  (setq line-spacing 1))

;; 一時的に proportional に切り替える
(defun use-font-prop ()
  "Set font to proportional"
  (interactive)
  (setq buffer-face-mode-face '(:family "Emberiza Sans test3" :height 135))
  (buffer-face-mode)
  (setq line-spacing 2))

;; モードごとのフォント切り替え
(add-hook 'dired-mode-hook 'use-font-mono)
(add-hook 'emacs-lisp-mode-hook 'use-font-mono)
(add-hook 'lisp-mode-hook 'use-font-mono)
;(add-hook 'markdown-mode-hook 'use-font-prop)
;n(add-hook 'markdown-mode-hook 'use-font-prop)
;(add-hook 'web-mode-hook 'use-font-prop)
