;;;; darkpastel-theme.el --- dark background and pastel
;;
;; Copyright(C) 2011-2013 Youhei SASAKI All rights reserved.
;;
;; Author: Youhei SASAKI <uwabami@gfd-dennou.org>
;;         Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/uwabami/color-theme-darkpastel
;; Version: 0.1
;; License: GPL-3+
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
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

(deftheme darkpastel
  "dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel")

;; load 256 color palette
(eval-and-compile
  '(progn
     (load "term/xterm")
     (unless (window-system)
       (xterm-register-default-colors))))

(custom-theme-set-faces
 'darkpastel
 ;; basic coloring
 '(default ((t (:foreground "#f6f3e8" :background "#242424"))))
 '(cursor ((t (:background "#00aeae"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Monospace"))))
 '(escape-glyph ((t (:foreground "#a5a54c"))))
 '(minibuffer-prompt ((t (:foreground "#4ca5ff"))))
 '(highlight ((t (:background "#7f7f4c"))))
 '(region ((t (:background "#4c4ca5"))))
 '(shadow ((t (:foreground "#a5a5a5"))))
 '(secondary-selection ((t (:background "#4c4c7f"))))
 '(trailing-whitespace ((t (:background "#ff4c4c"))))
 '(font-lock-builtin-face ((t (:foreground "#4ca5ff"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#a5a5a5"))))
 '(font-lock-comment-face ((t (:foreground "#a5a5a5"))))
 '(font-lock-constant-face ((t (:foreground "#ffa54c"))))
 '(font-lock-doc-face ((t (:foreground "#eeeeee" :underline t))))
 '(font-lock-function-name-face ((t (:foreground "#a54cff"))))
 '(font-lock-keyword-face ((t (:foreground "#ff7f7f"))))
 '(font-lock-negation-char-face ((t (:foreground "#4cffff"))))
 '(font-lock-preprocessor-face ((t (:foreground "#ff4c4c"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#ffa57f"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#ffa57f" :underline t))))
 '(font-lock-string-face ((t (:foreground "#4cff4c"))))
 '(font-lock-type-face ((t (:foreground "#ffff4c"))))
 '(font-lock-variable-name-face ((t (:foreground "#7f7fff"))))
 '(font-lock-warning-face ((t (:foreground "#ff7f7f" :weight bold))))
 '(button ((t (:foreground "#7fffff" :box (:line-width 1 :color "#a5ffff" :style released-button)))))
 '(link ((t (:foreground "#7fffff" :underline t))))
 '(link-visited ((t (:underline t :foreground "#ffa5ff"))))
 '(fringe ((t (:background "#222222"))))
 '(header-line ((t (:background "#4c4c4c" :foreground "#ffff7f" :underline t))))
 '(tooltip ((t (:background "#ffff4c" :foreground "#242424"))))
 '(mode-line ((t (:box (:line-width -1 :style released-button) :foreground "#eeeeee" :background "#7f7f7f"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 1 :color "#eeeeee" :style released-button)))))
 '(mode-line-inactive ((t (:background "#444444" :foreground "#7f7f7f" :box (:line-width -1 :color "#4c4c4c" :style released-button) :weight light))))
 '(isearch ((t (:foreground "#7f7fff"))))
 '(isearch-fail ((t (:background "#a54c4c"))))
 '(lazy-highlight ((t (:background "#ffff4c" :foreground "#242424"))))
 '(match ((t (:background "#4c4ca5"))))
 '(next-error ((t (:foreground "#ff4cff"))))
 '(query-replace ((t (:background "#a54ca5"))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'darkpastel)

;; Local Variables:
;; coding: utf-8-unix
;; indent-tabs-mode: nil
;; End:

;;; darkpastel-theme.el ends here
