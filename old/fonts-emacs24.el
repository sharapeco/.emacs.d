;; -*- coding: utf-8 -*-

;(set-face-attribute 'default nil :family "Lucida Grande" :height 120)
;(set-fontset-font nil 'japanese-jisx0208 (font-spec :family "ヒラギノ角ゴ ProN"))

;;; ================================================================
;;; フォントセットを作る

;; Emberiza
(let* ((fontset-name "Emberiza") ; フォントセットの名前
       (size 14) ; ASCIIフォントのサイズ [9/10/12/14/15/17/19/20/...]
       (asciifont "Emberiza Sans") ; ASCIIフォント
       (jpfont "ヒラギノゴシック") ; 日本語フォント
       (emojifont "Apple Color Emoji") ; 絵文字用フォント🍣
       (font (format "%s-%d:weight=normal:slant=normal" asciifont size))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)) 
       (emoji-fontspec (font-spec :family emojifont))
       (fsn (create-fontset-from-ascii-font font nil fontset-name)))
  (set-fontset-font fsn 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font fsn 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font fsn 'katakana-jisx0201 jp-fontspec) ; 半角カナ
  (set-fontset-font fsn '(#x0080 . #x024F) fontspec) ; 分音符付きラテン
  (set-fontset-font fsn '(#x0370 . #x03FF) fontspec) ; ギリシャ文字
  (set-fontset-font fsn '(#x1F600 . #x1F64F) emoji-fontspec) ; 絵文字
  )

;; Mono
(let* ((fontset-name "Mono") ; フォントセットの名前
       (size 13.4) ; ASCIIフォントのサイズ [9/10/12/14/15/17/19/20/...]
       (asciifont "Menlo") ; ASCIIフォント
       (jpfont "ヒラギノ角ゴ ProN") ; 日本語フォント
       (emojifont "Apple Color Emoji") ; 絵文字用フォント🍣
       (font (format "%s-%d:weight=normal:slant=normal" asciifont size))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)) 
       (emoji-fontspec (font-spec :family emojifont))
       (fsn (create-fontset-from-ascii-font font nil fontset-name)))
  (set-fontset-font fsn 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font fsn 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font fsn 'katakana-jisx0201 jp-fontspec) ; 半角カナ
  (set-fontset-font fsn '(#x0080 . #x024F) fontspec) ; 分音符付きラテン
  (set-fontset-font fsn '(#x0370 . #x03FF) fontspec) ; ギリシャ文字
  (set-fontset-font fsn '(#x1F600 . #x1F64F) emoji-fontspec) ; 絵文字
  )

;;; デフォルトのフレームパラメータでフォントセットを指定
; (add-to-list 'default-frame-alist '(font . "fontset-Emberiza"))
; (add-to-list 'default-frame-alist '(font . "fontset-Mono"))

;;; デフォルトフェイスにフォントセットを設定
;;; (これは起動時に default-frame-alist に従ったフレームが作成されない現象への対処)
; (set-face-font 'default "fontset-Emberiza")

;;; 行間の設定
; (setq-default line-spacing 3)
