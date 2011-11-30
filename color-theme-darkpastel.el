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
  (require 'color-theme))

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
      (cond
       (window-system
        (background-color . "#242424"))
       (t
        (background-color . "unspecified-bg")))
      (foreground-color . "#f6f3e8")
      (border-color .     "#242424")
      (mouse-color .      "#242424")
      )
     ;; basic coloring
     (default ((t (:foreground "#f6f3e8"))))
     (cursor ((t (:background "#f6f3e8" :foreground "#242424"))))
     (region ((t (:background "#435869"))))
     (mode-line ((t (:background "#444444" :foreground "#cccccc"))))
     (mode-line-inactive ((t (:background "#444444" :foreground "#555555"))))
     (fringe ((t (:background "#242424"))))
     (minibuffer-prompt ((t (:background "#242424" :foreground "#bf7fff"))))
     (isearch ((t (:foreground "#9999ff"))))
     (lazy-highlight ((t (:background "#ffff99" :foreground "#242424"))))
     (highlight ((t ((:background "#7fffbf")))))
     (link ((t (:foreground "#7fbfff"))))
     (link-visited ((t (:foreground "#7fbfff"))))
     (button ((t (:underline t))))
     (header-line ((t (:background "#020202" :foreground "#ffff7f"))))
     (show-paren-match ((t (:background "#435869"))))
     ;; basic font-lock
     (font-lock-builtin-face ((t (:foreground "#bf7fff"))))
     (font-lock-comment-face ((t (:foreground "#888888"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#888888"))))
     (font-lock-constant-face ((t (:foreground "#ffbf7f"))))
     (font-lock-function-name-face ((t (:foreground "#cc99ff"))))
     (font-lock-negation-char-face ((t (:foreground "#99ccff"))))
     (font-lock-preprocessor-face ((t (:foreground "#ff6666"))))
     (font-lock-keyword-face ((t (:foreground "#ff7f7f"))))
     (font-lock-string-face ((t (:foreground "#7fff7f"))))
     (font-lock-type-face ((t (:foreground "#ffff7f"))))
     (font-lock-variable-name-face ((t (:foreground "#7f7fff"))))
     (font-lock-warning-face ((t (:foreground "#ff7fff"))))
     (font-lock-reference-face ((t (:foreground "#7b68ee"))))
     (font-lock-link-face ((t (:foreground "7fbfff"))))
     (font-lock-regexp-grouping-backslash ((t (:foreground "#ffcc99"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "#7f7fff"))))
     (c-annotation-face ((t (:inherit font-lock-constant-face))))
     ;; italic, bold
     (italic ((t (:italic nil :slant normal ))))
     (bold ((t (:bold nil :weight normal))))
     (bold-italic ((t (:italic nil :bold nil :slant normal :weight normal ))))

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

(provide 'color-theme-darkpastel)
;;; template.el ends here
