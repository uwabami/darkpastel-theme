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
      (mouse-color .      ,ctdp:black))
     ;; basic coloring
     (default ((t (:foreground ,ctdp:white))))
     (cursor ((t (:foreground ,ctdp:white+1))))
     (escape-glyph-face ((t (:foreground ,ctdp:red))))
     (fringe ((t (:foreground ,ctdp:white :background ,ctdp:black))))
     (header-line ((t (:foreground ,ctdp:yellow :background ,ctdp:black-1))))
     (highlight ((t ((:background ,ctdp:black+1)))))
     (region ((t (:background ,ctdp:blue-2))))
     (italic ((t (:slant normal ))))
     (bold ((t (:weight normal ))))
     (bold-italic ((t (:italic t :bold t))))
     (modeline ((t (:background ,ctdp:black+1 :foreground ,ctdp:white+1 ))))
     (modeline-inactive ((t (:background ,ctdp:black+1 :forground ,ctdp:black+2))))
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

     (lazy-highlight ((t (:forground ,ctdp:black :background ,ctdp:yellow+1))))


     )))
(set-face-italic-p 'italic nil)
(set-face-bold-p 'bold nil)
(provide 'color-theme-darkpastel)
;;; template.el ends here
