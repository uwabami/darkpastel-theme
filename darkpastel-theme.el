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
(load "term/xterm")
(unless (window-system)
  (xterm-register-default-colors))

(custom-theme-set-faces
 'darkpastel
 ;; basic coloring
 '(default ((t (:foreground "#f6f3e8" :background "#242424"))))
 '(border ((t (:foreground "#4f4f4f"))))
 '(mouse ((t (:foreground "#4f4f4f"))))
 '(cursor ((t (:background "#4cff4c" ))))
 '(region ((t (:background "#483d8b"))))
 '(mode-line ((t (:background "#4f4f4f" :foreground "#cccccc"))))
 '(mode-line-inactive ((t (:background "#242424" :foreground "#aaaaaa"))))
 '(fringe ((t (:background "#242424"))))
 '(minibuffer-prompt ((t (:background "#242424" :foreground "#7f7fff"))))
 '(isearch ((t (:foreground "#7f7fff"))))
 '(lazy-highlight ((t (:background "#ffff4c" :foreground "#242424"))))
 '(highlight ((t (:background "#483d8b"))))
 '(link ((t (:foreground "#7fbfff" :underline t))))
 '(link-visited ((t (:underline t :foreground "#7fbfff"))))
 '(button ((t (:underline t))))
 '(header-line ((t (:foreground "#ffff7f" :background "#4f4f4f" :inverse-video nil :underlne t))))
 '(show-paren-match ((t (:background "#483d8b"))))
 '(show-paren-mismatch ((t (:background "#a54cff" :foreground "#f6f3e8"))))
 ;; basic font-lock
 '(font-lock-builtin-face ((t (:foreground "#7f7fff"))))
 '(font-lock-comment-face ((t (:foreground "#888888"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#888888"))))
 '(font-lock-constant-face ((t (:foreground "#ffa54c"))))
 '(font-lock-function-name-face ((t (:foreground "#a54cff"))))
 '(font-lock-negation-char-face ((t (:foreground "#4cffff"))))
 '(font-lock-preprocessor-face ((t (:foreground "#ff4c4c"))))
 '(font-lock-keyword-face ((t (:foreground "#ff7f7f"))))
 '(font-lock-string-face ((t (:foreground "#4cff4c"))))
 '(font-lock-type-face ((t (:foreground "#ffff4c"))))
 '(font-lock-variable-name-face ((t (:foreground "#7f7fff"))))
 '(font-lock-warning-face ((t (:foreground "#ff7f7f"))))
 '(font-lock-reference-face ((t (:foreground "#4c4cff"))))
 '(font-lock-link-face ((t (:foreground "#7fffff"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#ffbf7f"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#7f7fff"))))
 '(c-annotation-face ((t (:inherit font-lock-constant-face))))
 ;; italic, bold -> disabled!
 '(italic ((t (:italic nil :slant normal ))))
 '(bold ((t (:bold nil :weight normal))))
 '(bold-italic ((t (:italic nil :bold nil :slant normal :weight normal ))))

 ;; Wanderlust
 '(wl-highlight-demo-face ((t (:bold nil :italic nil :slant normal :weight normal ))))
 ;; header
 '(wl-highlight-message-subject-header-contents  ((t (:foreground "#ff4c4c" :bold nil :weight normal))))
 '(wl-highlight-message-from-header-contents ((t (:foreground "#ffff4c" :bold nil :weight normal))))
 '(wl-highlight-message-date-header-contents ((t (:foreground "#4cff4c" :bold nil :weight normal))))
 '(wl-highlight-message-important-header-contents  ((t (:foreground "#ff4cff" :bold nil :weight normal))))
 '(wl-highlight-message-important-header-contents2 ((t (:bold nil :foreground "#ffa54c" :weight normal))))
 '(wl-highlight-message-unimportant-header-contents ((t (:foreground "#aaaaaa" :bold nil :weight normal))))
 '(wl-highlight-message-headers ((t (:foreground "#4cffff" :bold nil :weight normal))))
 '(wl-highlight-message-header-contents ((t (:foreground "#aaaaaa" :bold nil :weight normal))))
 ;; citation
 '(wl-highlight-message-citation-header ((t (:foreground "#4cffa5"))))
 '(wl-highlight-message-cited-text-1 ((t (:foreground "#4cffa5"))))
 '(wl-highlight-message-cited-text-2 ((t (:foreground "#4cffff"))))
 '(wl-highlight-message-cited-text-3 ((t (:foreground "#4ca5ff"))))
 '(wl-highlight-message-cited-text-4 ((t (:foreground "#4c4cff"))))
 '(wl-highlight-message-cited-text-5 ((t (:foreground "#a54cff"))))
 '(wl-highlight-message-cited-text-6 ((t (:foreground "#ff4cff"))))
 '(wl-highlight-message-cited-text-7 ((t (:foreground "#ff4ca5"))))
 '(wl-highlight-message-cited-text-8 ((t (:foreground "#ff4c4c"))))
 '(wl-highlight-message-cited-text-9 ((t (:foreground "#ffa54c"))))
 '(wl-highlight-message-cited-text-10 ((t (:foreground "#ffff4c"))))
 '(wl-highlight-message-signature ((t (:foreground "#aaaaaa"))))
 ;; summary
 '(wl-highlight-summary-high-read-face ((t (:bold nil :foreground "#7fffbf"  :weight normal))))
 '(wl-highlight-summary-high-unread-face ((t (:bold nil :foreground "#ffbf7f" :weight normal))))
 '(wl-highlight-summary-low-read-face ((t (:italic nil :foreground "#4cff4c"))))
 '(wl-highlight-summary-low-unread-face ((t (:italic nil :foreground "#7fbfff" ))))
 '(wl-highlight-summary-normal-face ((t (:foreground "#f6f3e8"))))
 '(wl-highlight-summary-killed-face ((t (:foreground "#888888" ))))
 '(wl-highlight-summary-new-face ((t (:foreground "#ff4c4c"))))
 '(wl-highlight-summary-unread-face ((t (:foreground "#ff4c4c"))))
 '(wl-highlight-summary-important-face ((t (:foreground "#4cffff"))))
 '(wl-highlight-summary-important-flag-face ((t (:foreground "#ffa54c"))))
 '(wl-highlight-summary-flagged-face ((t (:foreground "#ffff7f"))))
 '(wl-highlight-summary-displaying-face ((t (:underline t))))
 '(wl-highlight-summary-forwarded-face ((t ((:forground "#ffff4c")))))
 '(wl-highlight-summary-answered-face ((t ((:forground "#4ca5ff")))))
 '(wl-highlight-summary-copied-face ((t (:foreground "#4cffff"))))
 '(wl-highlight-summary-temp-face ((t (:foreground "#ff8fbf" ))))
 '(wl-highlight-summary-resend-face ((t (:foreground "#ffbf7f"))))
 '(wl-highlight-summary-deleted-face ((t (:foreground "#483d8b"))))
 '(wl-highlight-summary-prefetch-face ((t (:foreground "#4c4cff"))))
 '(wl-highlight-summary-refiled-face ((t (:foreground "#4cff4c"))))
 '(wl-highlight-summary-target-face ((t (:foreground "#4cffff"))))
 '(wl-highlight-summary-disposed-face ((t (:foreground "#aaaaaa"))))
 '(wl-highlight-summary-thread-top-face ((t (:foreground "#ffffff"))))
 '(wl-highlight-thread-indent-face  ((t (:underline t))))
 ;; summary
 '(wl-highlight-folder-zero-face ((t (:foreground "#f6f3e8"))))
 '(wl-highlight-folder-opened-face ((t (:foreground "#4cffff"))))
 '(wl-highlight-folder-unread-face ((t (:foreground "#4c4cff"))))
 '(wl-highlight-folder-unknown-face ((t (:foreground "#4cffff"))))
 '(wl-highlight-folder-few-face ((t (:foreground "#ff4c4c"))))
 '(wl-highlight-folder-many-face ((t (:foreground "#ff7fbf"))))
 '(wl-highlight-folder-closed-face ((t (:foreground "#4cff4c"))))
 '(wl-highlight-folder-killed-face ((t (:foreground "#242424"))))
 '(wl-highlight-folder-path-face ((t (:bold nil :underline t :weight normal))))

 ;; yaicomplete
 '(yaicomplete-completion-suffix-face ((t (:foreground "#666666"))))

 ;; org-mode
 '(org-level-1 ((t (:foreground "#ffff7f"))))
 '(org-level-2 ((t (:foreground "#ff7f7f"))))
 '(org-level-3 ((t (:foreground "#7fff7f"))))
 '(org-level-4 ((t (:foreground "#7f7fff"))))
 '(org-level-5 ((t (:foreground "#ffbf7f"))))
 '(org-level-6 ((t (:foreground "#ff7f7f"))))
 '(org-level-7 ((t (:foreground "#483d8b"))))
 '(org-level-8 ((t (:foreground "#888888"))))
 ;; outline -> same as org-mode
 '(outline-1 ((t (:foreground "#ffff7f"))))
 '(outline-2 ((t (:foreground "#ff7f7f"))))
 '(outline-3 ((t (:foreground "#7fff7f"))))
 '(outline-4 ((t (:foreground "#7f7fff"))))
 '(outline-6 ((t (:foreground "#ffbf7f"))))
 '(outline-5 ((t (:foreground "#ff7f7f"))))
 '(outline-7 ((t (:foreground "#483d8b"))))
 '(outline-8 ((t (:foreground "#888888"))))
 ;; howm
 '(howm-menu-key-face ((t (:foreground "#ffa54c"))))
 '(howm-menu-list-face ((t (nil))))
 '(howm-mode-keyword-face ((t (:foreground "#7f7fff"))))
 '(howm-mode-ref-face ((t (:foreground "#7f7fff"))))
 '(howm-mode-wiki-face ((t (:foreground "#7f7fff"))))
 '(howm-reminder-deadline-face ((t (:foreground "#ff7f7f"))))
 '(howm-reminder-defer-face ((t (:foreground "#ff7f7f"))))
 '(howm-reminder-done-face ((t (nil))))
 '(howm-reminder-late-deadline-face ((t (:background "#ff4c4c" :foreground "#666666"))))
 '(howm-reminder-normal-face ((t (:foreground "#4c4cff"))))
 '(howm-reminder-schedule-face ((t (:foreground "#4cff4c"))))
 '(howm-reminder-today-face ((t (:background "#ffbf7f" ))))
 '(howm-reminder-todo-face ((t (:foreground "#a54cff"))))
 '(howm-reminder-tomorrow-face ((t (:background "#ff4ca5" :foreground "#242424"))))
 '(howm-view-empty-face ((t (:background "#4c4cff"))))
 '(howm-view-hilit-face ((t (:foreground "#ff4c4c"))))
 '(howm-view-name-face ((t (:background  "#4c4cff" :foreground "#ffffff"))))
 '(howm-mode-title-face ((t (:foreground "#ffff4c"))))
 '(howm-mode-keyword-face ((t (:foreground "#4c4cff"))))
 '(howm-mode-ref-face ((t (:foreground "#4c4cff"))))
 '(action-lock-face ((t (:underline t :foreground "#4c4cff")))))

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
