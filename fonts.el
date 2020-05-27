;; -*- coding: utf-8 -*-

(setq-default line-spacing 2)

(let ((ff) (fs) (ff-ja))
  (when (eq system-type 'darwin)
    (setq ff "Emberiza Sans 12")
    (setq fs 135)
    (setq ff-ja "ヒラギノ角ゴ ProN"))
  (when (eq system-type 'windows-nt)
    (setq ff "Consolas")
    (setq fs 100)
    (setq ff-ja "源真ゴシック等幅 Regular"))

  (set-face-attribute 'default nil :family ff :height fs)

  ;; 日本語
  (let* ((fs (font-spec :family ff-ja)))
    (set-fontset-font t 'japanese-jisx0208 fs)
    (set-fontset-font t 'japanese-jisx0208-1978 fs)
    (set-fontset-font t 'japanese-jisx0212 fs)
    (set-fontset-font t 'japanese-jisx0213-1 fs)
    (set-fontset-font t 'japanese-jisx0213-2 fs)
    (set-fontset-font t 'japanese-jisx0213.2004-1 fs)
    (set-fontset-font t 'jisx0201 fs)
    (set-fontset-font t 'kana fs))
  )
(add-to-list 'face-font-rescale-alist '(".*hiragino.*" . 1.05))
(add-to-list 'face-font-rescale-alist '(".*genshin.*" . 1.00))

;; 一時的に monospace に切り替える
(defun use-font-mono ()
  "Set font to monospace"
  (interactive)
  (when (eq system-type 'darwin)
    (setq buffer-face-mode-face '(:family "Menlo" :height 125)))
  (when (eq system-type 'windows-nt)
    (setq buffer-face-mode-face '(:family "Consolas" :height 100)))
  (buffer-face-mode)
  (setq line-spacing 1))

;; 一時的に proportional に切り替える
(defun use-font-prop ()
  "Set font to proportional"
  (interactive)
  (when (eq system-type 'darwin)
    (setq buffer-face-mode-face '(:family "Emberiza Sans 12" :height 135)))
  (when (eq system-type 'windows-nt)
    (setq buffer-face-mode-face '(:family "Consolas" :height 100)))
  (buffer-face-mode)
  (setq line-spacing 2))

;; モードごとのフォント切り替え
(add-hook 'dired-mode-hook 'use-font-mono)
(add-hook 'emacs-lisp-mode-hook 'use-font-mono)
(add-hook 'lisp-mode-hook 'use-font-mono)
;(add-hook 'markdown-mode-hook 'use-font-prop)
;n(add-hook 'markdown-mode-hook 'use-font-prop)
;(add-hook 'web-mode-hook 'use-font-prop)
