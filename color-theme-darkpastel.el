;;;; color-theme-darkpastel.el -- dark background and pastel color
;; -*- mode: emacs-lisp; coding: utf-8-unix; indent-tabs-mode: nil -*-
;;;
;;
;; Copyright(C) 2011 Youhei SASAKI All rights reserved.
;; $Lastupdate: 2014-05-01 00:05:56$
;;
;; Author: Youhei SASAKI <uwabami@gfd-dennou.org>
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
(eval-and-compile
  (require 'color-theme))

;;;###autoload
(defun color-theme-darkpastel ()
  "my color theme - dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel"
  (interactive)
  (color-theme-install
   `(color-theme-darkpastel
     ;; color-theme mapping
     (
      (background-mode . dark)
      (foreground-color . "#f6f3e7")
      (background-color . "#242424")
      )
     ;; ;; basic coloring
     (default ((t (:foreground "#f6f3e7"))))
     (cursor ((t (:background "#4ca5a5" ))))
     (region ((t (:background "#4c4c4c" ))))
     (mode-line ((t (:foreground "#f6f3e7" :background "#4c4c4c"
                                 :box (:line-width -1 :style released-button)))))
     (mode-line-inactive ((t (:foreground "#242424" :background "#4c4c4c" ))))
     (fringe ((t (:background "#020202" ))))
     (minibuffer-prompt ((t (:foreground "#ff4c4c" ))))
     (isearch ((t (:foreground "#ff4c4c" ))))
     (lazy-highlight ((t (:foreground "#f6f3e7" :background "#4ca54c" ))))
     (highlight ((t (:background "#4c4c4c" :underline t ))))
     (link ((t (:foreground "#7fffff" :underline t ))))
     (link-visited ((t (:foreground "#ff4cff" :underline t ))))
     (button ((t (:foreground "#f6f3e7"
                              :box (:line-width -1 :style released-button )))))
     (header-line ((t (:foreground "#4cff4c" ))))
     (show-paren-match-face    ((t (:foreground nil :background nil :underline  "#ffff7f"  :weight bold))))
     (show-paren-mismatch-face ((t (:foreground nil :background nil :underline  "#ff7f7f" :weight bold))))
     ;; basic font-lock
     (font-lock-builtin-face              ((t (:foreground "#7f7fff" ))))
     (font-lock-comment-delimiter-face    ((t (:foreground "#777777" ))))
     (font-lock-comment-face              ((t (:foreground "#777777" ))))
     (font-lock-constant-face             ((t (:foreground "#ffbf7f" ))))
     (font-lock-doc-face                  ((t (:foreground "#4ca54c" ))))
     (font-lock-doc-string-face           ((t (:foreground "#4ca54c" ))))
     (font-lock-function-name-face        ((t (:foreground "#bf7fff" ))))
     (font-lock-keyword-face              ((t (:foreground "#ff7f7f" ))))
     (font-lock-negation-char-face        ((t (:foreground "#7fffff" ))))
     (font-lock-preprocessor-face         ((t (:foreground "#ff7fbf" ))))
     (font-lock-regexp-grouping-backslash ((t (:foreground "#ff4c4c" :bold t))))
     (font-lock-regexp-grouping-construct ((t (:foreground "#bf7fff" :bold t))))
     (font-lock-string-face               ((t (:foreground "#7fff7f" ))))
     (font-lock-type-face                 ((t (:foreground "#ffff7f" ))))
     (font-lock-variable-name-face        ((t (:foreground "#7fbfff" ))))
     (font-lock-warning-face              ((t (:foreground "#ff7fff" :weight bold))))

     ;;; Wanderlust
     ;; header
     (wl-highlight-message-subject-header-contents     ((t (:foreground "#ff4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-from-header-contents        ((t (:foreground "#ffff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-date-header-contents        ((t (:foreground "#4cff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-important-header-contents   ((t (:foreground "#ff4cff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-important-header-contents2  ((t (:foreground "#ffbf7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-unimportant-header-contents ((t (:foreground "#cccccc" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-headers                     ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-header-contents             ((t (:foreground "#cccccc" :bold nil :italic nil :weight normal ))))
     ;; citation
     (wl-highlight-message-citation-header             ((t (:foreground "#7fff7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-1                ((t (:foreground "#7fff7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-2                ((t (:foreground "#ffff7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-3                ((t (:foreground "#7f7fff"  :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-4                ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-5                ((t (:foreground "#ff7fff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-6                ((t (:foreground "#bf7fff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-7                ((t (:foreground "#ffbf7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-8                ((t (:foreground "#ff7f7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-9                ((t (:foreground "#cccccc" :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-10               ((t (:foreground "#777777" :bold nil :italic nil :weight normal ))))
     ;;; signature
     (wl-highlight-message-signature                   ((t (:foreground "#777777" :bold nil :italic nil :weight normal ))))
     ;;; summary mode
     (wl-highlight-summary-high-read-face              ((t (:foreground "#7fff7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-high-unread-face            ((t (:foreground "#ffbf7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-low-read-face               ((t (:foreground "#4cff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-low-unread-face             ((t (:foreground "#7fbfff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-normal-face                 ((t (:foreground "#f6f3e7" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-killed-face                 ((t (:foreground "#777777" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-new-face                    ((t (:foreground "#ff4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-unread-face                 ((t (:foreground "#ff4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-face              ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-flag-face         ((t (:foreground "#ffff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-flagged-face                ((t (:foreground "#ffff7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-displaying-face             ((t (:underline t :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-forwarded-face              ((t (:foreground "#ffff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-answered-face               ((t (:foreground "#4ca5a5" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-copied-face                 ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-temp-face                   ((t (:foreground "#ff7fbf" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-resend-face                 ((t (:foreground "#ffbf7f" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-deleted-face                ((t (:foreground "#4c4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-prefetch-face               ((t (:foreground "#4c4cff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-refiled-face                ((t (:foreground "#4cff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-target-face                 ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-disposed-face               ((t (:foreground "#cccccc" :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-thread-top-face             ((t (:foreground "#f6f3e7" :bold nil :italic nil :weight normal ))))
     (wl-highlight-thread-indent-face                  ((t (:underline t :bold nil :italic nil :weight normal ))))
     ;;; folder
     (wl-highlight-folder-zero-face                    ((t (:foreground "#f6f3e7" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-opened-face                  ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unread-face                  ((t (:foreground "#4c4cff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unknown-face                 ((t (:foreground "#4cffff" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-few-face                     ((t (:foreground "#ff4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-many-face                    ((t (:foreground "#ff7fbf" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-closed-face                  ((t (:foreground "#4cff4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-killed-face                  ((t (:foreground "#4c4c4c" :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-path-face                    ((t (:underline t :bold nil :italic nil :weight normal ))))

     ;; org-mode
     (org-level-1 ((t (:bold t :foreground "#ffff7f"))))
     (org-level-2 ((t (:bold t :foreground "#7fff7f"))))
     (org-level-3 ((t (:bold t :foreground "#ff7f7f"))))
     (org-level-4 ((t (:bold t :foreground "#7f7fff"))))
     (org-level-5 ((t (:bold t :foreground "#ff7fff"))))
     (org-level-6 ((t (:bold t :foreground "#bf7fff"))))
     (org-level-7 ((t (:bold t :foreground "#ffbf7f"))))
     (org-level-8 ((t (:bold t :foreground "#4c4c4c"))))
     ;; howm-mode
     (howm-mode-title-face ((t (:bold t :foreground "#ffff7f"))))
     )))

(provide 'color-theme-darkpastel)
;;; color-theme-darkpastel.el ends here
