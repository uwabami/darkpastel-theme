;; -*- mode: emacs-lisp; coding: utf-8-unix; indent-tabs-mode: nil -*-
;;; color-theme-darkpastel.el

;; Copyright(C) 2011 Youhei SASAKI All rights reserved.
;; $Id: $

;; Author: Youhei SASAKI <uwabami@gfd-dennou.org>
;; Keywords:
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Code:

;; requires
(eval-when-compile
  (require 'color-theme)
  (setq max-specpdl-size 6000)
  (setq max-lisp-eval-depth 1000)
  )

;; color definitions
(defvar ctdp:fg             "#f6f3e8")
(defvar ctdp:bg             "#242424")
(defvar ctdp:black-1        "#020202")
(defvar ctdp:black          "#242424")
(defvar ctdp:black+1        "#444444")
(defvar ctdp:black+2        "#555555")
(defvar ctdp:black+3        "#666666")
(defvar ctdp:gray           "#888888")
(defvar ctdp:gray+1         "#99968b")
(defvar ctdp:red-1          "#e5786d")
(defvar ctdp:red            "#ff7f7f")
(defvar ctdp:red+1          "#ff9999")
(defvar ctdp:green          "#7fff7f")
(defvar ctdp:green+1        "#ccff99")
(defvar ctdp:lightgreen     "#7fffbf")
(defvar ctdp:lightgreen+1   "#99ffcc")
(defvar ctdp:yellow         "#ffff7f")
(defvar ctdp:yellow+1       "#ffff99")
(defvar ctdp:orange         "#ffbf7f")
(defvar ctdp:orange+1       "#ffcc99")
(defvar ctdp:blue-2         "#435869")
(defvar ctdp:blue-1         "#7b68ee")
(defvar ctdp:blue           "#7f7fff")
(defvar ctdp:blue+1         "#9999ff")
(defvar ctdp:purple         "#bf7fff")
(defvar ctdp:purple+1       "#cc99ff")
(defvar ctdp:cyan           "#7fbfff")
(defvar ctdp:cyan+1         "#99ccff")
(defvar ctdp:lightcyan      "#7fffff")
(defvar ctdp:lightcyan+1    "#99ffff")
(defvar ctdp:magenta        "#ff7fff")
(defvar ctdp:magenta+1      "#ff99ff")
(defvar ctdp:lightmagenta   "#ff7fbf")
(defvar ctdp:lightmagenta+1 "#ff99cc")
(defvar ctdp:white          "#f6f3e8")
(defvar ctdp:white+1        "#cccccc")
(defvar ctdp:white+2        "#e6e6e6")

(eval-after-load 'term
  '(setq ansi-term-color-vector
         (vector
          'unspecified
          ctdp:black
          ctdp:red
          ctdp:grean
          ctdp:blue
          ctdp:magenta
          ctdp:cyan
          ctdp:white
          )))

(defun color-theme-darkpastel ()
  "my color theme - dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel/blob/master/color-theme-darkpastel.el"
  (interactive)
  (color-theme-install
   `(color-theme-darkpastel
     ;; color-theme mapping
     (
      (background-mode . dark)
      ;; for transparent terminal
      (when window-system
        (background-color . ,ctdp:black))
      (foreground-color . ,ctdp:white)
      (border-color .     ,ctdp:black)
      (mouse-color .      ,ctdp:black)
      )
     ;; basic coloring
     (default ((t (:foreground ,ctdp:white))))
     (cursor ((t (:foreground ,ctdp:white+1))))
     (escape-glyph-face ((t (:foreground ,ctdp:red))))
     (fringe ((t (:foreground ,ctdp:white :background ,ctdp:black))))
     (header-line ((t (:foreground ,ctdp:yellow :background ,ctdp:black-1))))
     (region ((t (:background ,ctdp:blue-2))))
     (italic ((t (:slant normal ))))
     (bold ((t (:weight normal ))))
     (bold-italic ((t (:italic nil :bold nil :weight normal :slant normal))))
     (modeline ((t (:background ,ctdp:black+1 :foreground ,ctdp:white+1 ))))
     (modeline-inactive ((t (:background ,ctdp:black+1 :foreground ,ctdp:black+2))))
     (minibuffer-prompt ((t (:foreground ,ctdp:purple ))))
     (secondary-selection ((t (:background ,ctdp:black-1))))
     (trailing-whitespace ((t (:background ,ctdp:red-1))))

     ;; basic font-lock settings
     (font-lock-builtin-face ((t (:foreground ,ctdp:purple))))
     (font-lock-comment-face ((t (:foreground ,ctdp:gray))))
     (font-lock-comment-delimiter-face ((t (:foreground ,ctdp:gray))))
     (font-lock-constant-face ((t (:foreground ,ctdp:orange))))
     (font-lock-doc-face ((t (:foreground ,ctdp:black+3))))
     (font-lock-doc-string-face ((t (:foreground ,ctdp:black+1))))
     (font-lock-function-name-face ((t (:foreground ,ctdp:purple+1))))
     (font-lock-keyword-face ((t (:foreground ,ctdp:red))))
     (font-lock-negation-char-face ((t (:foreground ,ctdp:lightgreen+1))))
     (font-lock-preprocessor-face ((t (:foreground ,ctdp:red-1))))
     (font-lock-string-face ((t (:foreground ,ctdp:green))))
     (font-lock-type-face ((t (:foreground ,ctdp:yellow))))
     (font-lock-variable-name-face ((t (:foreground ,ctdp:blue))))
     (font-lock-warning-face ((t (:foreground ,ctdp:magenta))))
     (font-lock-reference-face ((t (:foreground ,ctdp:blue-1))))
     (font-lock-link-face ((t (:foreground ,ctdp:cyan))))
     (font-lock-regexp-grouping-backslash ((t (:foreground ,ctdp:orange+1))))
     (font-lock-regexp-grouping-construct ((t (:foreground ,ctdp:blue))))
     (show-paren-match ((t (:background ,ctdp:blue-1))))
     (c-annotation-face ((t (:inherit font-lock-constant-face))))
     (lazy-highlight ((t (:foreground ,ctdp:black :background ,ctdp:yellow+1))))
     (highlight ((t ((:background ,ctdp:lightgreen)))))

     ;;; muse-mode
     (muse-bad-link ((t (:bold t :foreground "coral" :underline "coral" :weight normal))))
     (muse-emphasis-1 ((t (:slant normal))))
     (muse-emphasis-2 ((t (:weight normal))))
     (muse-emphasis-3 ((t (:italic t :bold t :slant normal :weight normal))))
     (muse-header-1 ((t (:bold t :weight normal :height 1.0 ))))
     (muse-header-2 ((t (:bold t :weight normal :height 1.0 ))))
     (muse-header-3 ((t (:bold t :weight normal :height 1.0 ))))
     (muse-header-4 ((t (:bold t :weight normal :height 1.0 ))))
     (muse-header-5 ((t (:bold t :weight normal :height 1.0 ))))
     (muse-link ((t (:bold t :foreground "cyan" :underline "cyan" :weight normal))))
     (muse-verbatim ((t (:foreground "gray"))))

     ;; org-mode
     (org-agenda-clocking ((t (:background "#020202"))))
     (org-agenda-column-dateline ((t (:weight normal :slant normal :underline nil :strike-through nil :background "grey30" ))))
     (org-agenda-current-time ((t (:foreground "LightGoldenrod"))))
     (org-agenda-date ((t (:foreground "LightSkyBlue"))))
     (org-agenda-date-today ((t (:italic t :bold t :foreground "LightSkyBlue" :slant normal :weight normal))))
     (org-agenda-date-weekend ((t (:bold t :foreground "LightSkyBlue" :weight normal))))
     (org-agenda-diary ((t (:width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#f6f3e8" :background "unspecified-bg" :stipple nil ))))
     (org-agenda-dimmed-todo-face ((t (:foreground "grey50"))))
     (org-agenda-done ((t (:foreground "PaleGreen"))))
     (org-agenda-filter-tags ((t (:box (:line-width -1 :style released-button) :foreground "#cccccc" :background "#444444"))))
     (org-agenda-restriction-lock ((t (:background "skyblue4"))))
     (org-agenda-structure ((t (:foreground "LightSkyBlue"))))
     (org-archived ((t (:foreground "grey70"))))
     (org-beamer-tag ((t (:box (:line-width 1 :color grey40)))))
     (org-block ((t (:foreground "grey70"))))
     (org-block-background ((t (nil))))
     (org-block-begin-line ((t (:foreground "#888888"))))
     (org-block-end-line ((t (:foreground "#888888"))))
     (org-checkbox ((t (:weight normal))))
     (org-checkbox-statistics-done ((t (:bold t :weight normal :foreground "PaleGreen"))))
     (org-checkbox-statistics-todo ((t (:bold t :weight normal :foreground "Pink"))))
     (org-clock-overlay ((t (:background "SkyBlue4"))))
     (org-code ((t (:foreground "grey70"))))
     (org-column ((t (:background "grey30" :strike-through nil :underline nil :slant normal :weight normal ))))
     (org-column-title ((t (:bold t :background "grey30" :underline t :weight normal))))
     (org-date ((t (:foreground "Cyan" :underline t))))
     (org-default ((t (:width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#f6f3e8" :background "unspecified-bg" :stipple nil ))))
     (org-document-info ((t (:foreground "pale turquoise"))))
     (org-document-info-keyword ((t (:foreground "grey70"))))
     (org-document-title ((t (:bold t :foreground "pale turquoise" :weight normal ))))
     (org-done ((t (:bold t :foreground "PaleGreen" :weight normal))))
     (org-drawer ((t (:foreground "LightSkyBlue"))))
     (org-ellipsis ((t (:foreground "LightGoldenrod" :underline t))))
     (org-footnote ((t (:foreground "Cyan" :underline t))))
     (org-formula ((t (:foreground "chocolate1"))))
     (org-headline-done ((t (:foreground "LightSalmon"))))
     (org-hide ((t (:foreground "black"))))
     (org-latex-and-export-specials ((t (:foreground "burlywood"))))
     (org-level-1 ((t (:foreground "#cc99ff"))))
     (org-level-2 ((t (:foreground "#7f7fff"))))
     (org-level-3 ((t (:foreground "#ff7f7f"))))
     (org-level-4 ((t (:foreground "#888888"))))
     (org-level-5 ((t (:foreground "#ffff7f"))))
     (org-level-6 ((t (:foreground "#ffbf7f"))))
     (org-level-7 ((t (:foreground "#bf7fff"))))
     (org-level-8 ((t (:foreground "#7fff7f"))))
     (org-link ((t (:underline t :foreground "cyan1"))))
     (org-meta-line ((t (:foreground "#888888"))))
     (org-mode-line-clock ((t (:box (:line-width -1 :style released-button) :foreground "#cccccc" :background "#444444"))))
     (org-mode-line-clock-overrun ((t (:box (:line-width -1 :style released-button) :foreground "#cccccc" :background "red"))))
     (org-property-value ((t (nil))))
     (org-quote ((t (:foreground "grey70"))))
     (org-scheduled ((t (:foreground "PaleGreen"))))
     (org-scheduled-previously ((t (:foreground "chocolate1"))))
     (org-scheduled-today ((t (:foreground "PaleGreen"))))
     (org-sexp-date ((t (:foreground "Cyan"))))
     (org-special-keyword ((t (:foreground "#ff7f7f"))))
     (org-table ((t (:foreground "LightSkyBlue"))))
     (org-tag ((t (:bold t :weight normal))))
     (org-target ((t (:underline t))))
     (org-time-grid ((t (:foreground "LightGoldenrod"))))
     (org-todo ((t (:bold t :foreground "Pink" :weight normal))))
     (org-upcoming-deadline ((t (:foreground "chocolate1"))))
     (org-verbatim ((t (:foreground "grey70"))))
     (org-verse ((t (:foreground "grey70"))))
     (org-warning ((t (:foreground "#ff7fff"))))

     ;;; Wanderlust
     ;; header
     (wl-highlight-message-subject-header-contents  ((t (:foreground "#e5786d" :bold t))))
     (wl-highlight-message-from-header-contents ((t (:foreground "#cae682" :bold t))))
     (wl-highlight-message-important-header-contents  ((t (:foreground "violet" :bold t))))
     (wl-highlight-message-unimportant-header-contents ((t (:foreground "gray75" :bold t))))
     (wl-highlight-message-date-header-contents ((t (:foreground "#95e454" :bold t))))
     (wl-highlight-message-headers ((t (:foreground "cyan" :bold t))))
     (wl-highlight-message-header-contents ((t (:foreground "gray75" :bold nil))))
     ;; citation
     (wl-highlight-message-citation-header ((t (:foreground "#95e454"))))
     (wl-highlight-message-cited-text-1 ((t (:foreground "#95e454"))))
     (wl-highlight-message-cited-text-2 ((t (:foreground "cyan"))))
     (wl-highlight-message-cited-text-3 ((t (:foreground "violet"))))
     (wl-highlight-message-cited-text-4 ((t (:foreground "#cae682"))))
     (wl-highlight-message-cited-text-5 ((t (:foreground "#e57865"))))
     ;; (wl-highlight-message-cited-text-6
     ;;                 ((t (:foreground "PaleVioletRed"))))
     ;; (wl-highlight-message-cited-text-7
     ;;                 ((t (:foreground "LightPink"))))
     ;; (wl-highlight-message-cited-text-8
     ;;                 ((t (:foreground "salmon"))))
     ;; (wl-highlight-message-cited-text-9
     ;;                 ((t (:foreground "SandyBrown"))))
     ;; (wl-highlight-message-cited-text-10
     ;;                 ((t (:foreground "wheat"))))
     ;; not 署名には色をつけない
     (wl-highlight-message-signature ((t (:foreground "#f6f3e8"))))
     ;; summary
     ;; サマリでスレッドトップのメッセージ行の face
     (wl-highlight-summary-thread-top-face ((t (:foreground "#f6f3e8"))))
     ;; サマリでスレッドトップではないメッセージ行の face
     (wl-highlight-summary-normal-face ((t (:foreground "#f6f3e8"))))
     ;; サマリで新規マークのついたメッセージ行の face
     (wl-highlight-summary-new-face ((t (:foreground "tomato"))))
     ;; サマリで未読マークのついたメッセージ行の face
     (wl-highlight-summary-unread-face ((t (:foreground "tomato"))))
     ;; サマリで重要マークのついたメッセージ行の face
     (wl-highlight-summary-important-face ((t (:foreground "cyan"))))
     ;; サマリで現在表示中のメッセージ行の face
     (wl-highlight-summary-displaying-face ((t (:underline t :bold t))))
     (wl-highlight-thread-indent-face  ((t (:underline t :bold t))))
     ;; サマリで削除マークのついたメッセージ行の face
     (wl-highlight-summary-deleted-face ((t (:foreground "violet"))))
     ;; サマリでリファイルマークのついたメッセージ行の face
     (wl-highlight-summary-refiled-face ((t (:foreground "lightgreen"))))
     ;; サマリでまとめ処理用マーク `*' のついたメッセージ行の face
     (wl-highlight-summary-target-face ((t (:foreground "cyan"))))
     ;; folder
     ;; フォルダモードで、未同期メッセージがないフォルダの face
     (wl-highlight-folder-zero-face ((t (:foreground "#f6f3e8"))))
     ;; フォルダモードで、開いたグループにつく face です。
     (wl-highlight-folder-opened-face ((t (:foreground "cyan"))))
     ;; フォルダモードで、未同期メッセージがなくて
     ;; 未読メッセージがあるフォルダの face
     (wl-highlight-folder-unread-face ((t (:foreground "RoyalBlue"))))
     ;; フォルダモードで、いくつ未同期メッセージがあるか分らないフォルダ
     ;; の face
     (wl-highlight-folder-unknown-face ((t (:foreground "cyan"))))
     ;; フォルダモードで、未同期メッセージが少しあるフォルダの face
     (wl-highlight-folder-few-face ((t (:foreground "red"))))
     ;; フォルダモードで、未同期メッセージがたくさんあるフォルダの face
     (wl-highlight-folder-many-face ((t (:foreground "brightred"))))
     ;;;

     )))
;; disable bold, italic
(set-face-italic-p 'italic nil)
(set-face-bold-p 'bold nil)

(provide 'color-theme-darkpastel)
;;; template.el ends here
