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

;; color def.
(defvar pastel-black-1      "#242424")
(defvar pastel-black        "#4f4f4f")
(defvar pastel-black+1      "#666666")
(defvar pastel-gray-1       "#888888")
(defvar pastel-gray         "#aaaaaa")
(defvar pastel-gray+1       "#cccccc")
(defvar pastel-white-1      "#eeeeee")
(defvar pastel-white        "#f6f3e8")
(defvar pastel-white+1      "#ffffff")
(defvar pastel-red          "#ff4c4c")
(defvar pastel-red+1        "#ff7f7f")
(defvar pastel-pink         "#ff4ca5")
(defvar pastel-pink+1       "#ff7fbf")
(defvar pastel-magenta      "#ff4cff")
(defvar pastel-magenta+1    "#ff7fbf")
(defvar pastel-purple       "#a54cff")
(defvar pastel-purple+1     "#bf7fff")
(defvar pastel-blue         "#4c4cff")
(defvar pastel-blue+1       "#7f7fff")
(defvar pastel-lightblue    "#4ca5ff")
(defvar pastel-lightblue+1  "#7fbfff")
(defvar pastel-cyan         "#4cffff")
(defvar pastel-cyan+1       "#7fffff")
(defvar pastel-emerald      "#4cffa5")
(defvar pastel-emerald+1    "#7fffbf")
(defvar pastel-green        "#4cff4c")
(defvar pastel-green+1      "#7fff7f")
(defvar pastel-lightgreen   "#4cffa5")
(defvar pastel-lightgreen+1 "#7fffbf")
(defvar pastel-yellow       "#ffff4c")
(defvar pastel-yellow+1     "#ffff7f")
(defvar pastel-orange       "#ffa54c")
(defvar pastel-orange+1     "#ffbf7f")
(defvar pastel-darkblue     "#483d8b")

(custom-theme-set-faces
 'darkpastel

 ;; ;; basic coloring
 '(default ((t (:foreground ,pastel-white :background ,pastel-black-1))))
 '(border ((t (:foreground ,pastel-black))))
 '(mouse ((t (:foreground ,pastel-black))))
 '(cursor ((t (:background ,pastel-green ))))
 '(region ((t (:background ,pastel-darkblue))))
 '(mode-line ((t (:background ,pastel-black :foreground ,pastel-gray+1))))
 '(mode-line-inactive ((t (:background ,pastel-black-1 :foreground ,pastel-gray))))
 '(fringe ((t (:background ,pastel-black-1))))
 '(minibuffer-prompt ((t (:background ,pastel-black-1 :foreground ,pastel-blue+1))))
 '(isearch ((t (:foreground ,pastel-blue+1))))
 '(lazy-highlight ((t (:background ,pastel-yellow :foreground ,pastel-black-1))))
 '(highlight ((t (:background ,pastel-darkblue))))
 '(link ((t (:foreground ,pastel-lightblue+1 :underline t))))
 '(link-visited ((t (:underline t :foreground ,pastel-lightblue+1))))
 '(button ((t (:underline t))))
 '(header-line ((t (:foreground ,pastel-yellow+1 :background ,pastel-black :inverse-video nil :underlne t))))
 '(show-paren-match ((t (:background ,pastel-darkblue))))
 '(show-paren-mismatch ((t (:background ,pastel-purple :foreground ,pastel-white))))
 ;; basic font-lock
 '(font-lock-builtin-face ((t (:foreground ,pastel-blue+1))))
 '(font-lock-comment-face ((t (:foreground ,pastel-gray-1))))
 '(font-lock-comment-delimiter-face ((t (:foreground ,pastel-gray-1))))
 '(font-lock-constant-face ((t (:foreground ,pastel-orange))))
 '(font-lock-function-name-face ((t (:foreground ,pastel-purple))))
 '(font-lock-negation-char-face ((t (:foreground ,pastel-cyan))))
 '(font-lock-preprocessor-face ((t (:foreground ,pastel-red))))
 '(font-lock-keyword-face ((t (:foreground ,pastel-red+1))))
 '(font-lock-string-face ((t (:foreground ,pastel-green))))
 '(font-lock-type-face ((t (:foreground ,pastel-yellow))))
 '(font-lock-variable-name-face ((t (:foreground ,pastel-blue+1))))
 '(font-lock-warning-face ((t (:foreground ,pastel-magenta+1))))
 '(font-lock-reference-face ((t (:foreground ,pastel-blue))))
 '(font-lock-link-face ((t (:foreground ,pastel-cyan+1))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground ,pastel-orange+1))))
 '(font-lock-regexp-grouping-construct ((t (:foreground ,pastel-blue+1))))
 '(c-annotation-face ((t (:inherit font-lock-constant-face))))
 ;; italic, bold -> disabled!
 '(italic ((t (:italic nil :slant normal ))))
 '(bold ((t (:bold nil :weight normal))))
 '(bold-italic ((t (:italic nil :bold nil :slant normal :weight normal ))))

 ;; Wanderlust
 '(wl-highlight-demo-face ((t (:bold nil :italic nil :slant normal :weight normal ))))
 ;; header
 '(wl-highlight-message-subject-header-contents  ((t (:foreground ,pastel-red :bold nil :weight normal))))
 '(wl-highlight-message-from-header-contents ((t (:foreground ,pastel-yellow :bold nil :weight normal))))
 '(wl-highlight-message-date-header-contents ((t (:foreground ,pastel-green :bold nil :weight normal))))
 '(wl-highlight-message-important-header-contents  ((t (:foreground ,pastel-magenta :bold nil :weight normal))))
 '(wl-highlight-message-important-header-contents2 ((t (:bold nil :foreground ,pastel-orange :weight normal))))
 '(wl-highlight-message-unimportant-header-contents ((t (:foreground ,pastel-gray :bold nil :weight normal))))
 '(wl-highlight-message-headers ((t (:foreground ,pastel-cyan :bold nil :weight normal))))
 '(wl-highlight-message-header-contents ((t (:foreground ,pastel-gray :bold nil :weight normal))))
 ;; citation
 '(wl-highlight-message-citation-header ((t (:foreground ,pastel-lightgreen))))
 '(wl-highlight-message-cited-text-1 ((t (:foreground ,pastel-emerald))))
 '(wl-highlight-message-cited-text-2 ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-message-cited-text-3 ((t (:foreground ,pastel-lightblue))))
 '(wl-highlight-message-cited-text-4 ((t (:foreground ,pastel-blue))))
 '(wl-highlight-message-cited-text-5 ((t (:foreground ,pastel-purple))))
 '(wl-highlight-message-cited-text-6 ((t (:foreground ,pastel-magenta))))
 '(wl-highlight-message-cited-text-7 ((t (:foreground ,pastel-pink))))
 '(wl-highlight-message-cited-text-8 ((t (:foreground ,pastel-red))))
 '(wl-highlight-message-cited-text-9 ((t (:foreground ,pastel-orange))))
 '(wl-highlight-message-cited-text-10 ((t (:foreground ,pastel-yellow))))
 '(wl-highlight-message-signature ((t (:foreground ,pastel-white-1))))
 ;; summary
 '(wl-highlight-summary-high-read-face ((t (:bold nil :foreground ,pastel-emerald+1  :weight normal))))
 '(wl-highlight-summary-high-unread-face ((t (:bold nil :foreground ,pastel-orange+1 :weight normal))))
 '(wl-highlight-summary-low-read-face ((t (:italic nil :foreground ,pastel-green))))
 '(wl-highlight-summary-low-unread-face ((t (:italic nil :foreground ,pastel-lightblue+1 ))))
 '(wl-highlight-summary-normal-face ((t (:foreground ,pastel-white))))
 '(wl-highlight-summary-killed-face ((t (:foreground ,pastel-gray-1 ))))
 '(wl-highlight-summary-new-face ((t (:foreground ,pastel-red))))
 '(wl-highlight-summary-unread-face ((t (:foreground ,pastel-red))))
 '(wl-highlight-summary-important-face ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-summary-important-flag-face ((t (:foreground ,pastel-orange))))
 '(wl-highlight-summary-flagged-face ((t (:foreground ,pastel-yellow+1))))
 '(wl-highlight-summary-displaying-face ((t (:underline t))))
 '(wl-highlight-summary-forwarded-face ((t ((:forground ,pastel-yellow)))))
 '(wl-highlight-summary-answered-face ((t ((:forground ,pastel-lightblue)))))
 '(wl-highlight-summary-copied-face ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-summary-temp-face ((t (:foreground ,pastel-pink+1 ))))
 '(wl-highlight-summary-resend-face ((t (:foreground ,pastel-orange+1))))
 '(wl-highlight-summary-deleted-face ((t (:foreground ,pastel-darkblue))))
 '(wl-highlight-summary-prefetch-face ((t (:foreground ,pastel-blue))))
 '(wl-highlight-summary-refiled-face ((t (:foreground ,pastel-green))))
 '(wl-highlight-summary-target-face ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-summary-disposed-face ((t (:foreground ,pastel-gray))))
 '(wl-highlight-summary-thread-top-face ((t (:foreground ,pastel-white+1))))
 '(wl-highlight-thread-indent-face  ((t (:underline t))))
 ;; summary
 '(wl-highlight-folder-zero-face ((t (:foreground ,pastel-white))))
 '(wl-highlight-folder-opened-face ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-folder-unread-face ((t (:foreground ,pastel-blue))))
 '(wl-highlight-folder-unknown-face ((t (:foreground ,pastel-cyan))))
 '(wl-highlight-folder-few-face ((t (:foreground ,pastel-red))))
 '(wl-highlight-folder-many-face ((t (:foreground ,pastel-pink+1))))
 '(wl-highlight-folder-closed-face ((t (:foreground ,pastel-green))))
 '(wl-highlight-folder-killed-face ((t (:foreground ,pastel-black-1))))
 '(wl-highlight-folder-path-face ((t (:bold nil :underline t :weight normal))))

 ;; yaicomplete
 '(yaicomplete-completion-suffix-face ((t (:foreground ,pastel-black+1))))

 ;; org-mode
 '(org-level-1 ((t (:foreground ,pastel-yellow+1))))
 '(org-level-2 ((t (:foreground ,pastel-red+1))))
 '(org-level-3 ((t (:foreground ,pastel-green+1))))
 '(org-level-4 ((t (:foreground ,pastel-blue+1))))
 '(org-level-5 ((t (:foreground ,pastel-orange+1))))
 '(org-level-6 ((t (:foreground ,pastel-magenta+1))))
 '(org-level-7 ((t (:foreground ,pastel-darkblue))))
 '(org-level-8 ((t (:foreground ,pastel-gray-1))))
 ;; outline -> same as org-mode
 '(outline-1 ((t (:foreground ,pastel-yellow+1))))
 '(outline-2 ((t (:foreground ,pastel-red+1))))
 '(outline-3 ((t (:foreground ,pastel-green+1))))
 '(outline-4 ((t (:foreground ,pastel-blue+1))))
 '(outline-6 ((t (:foreground ,pastel-orange+1))))
 '(outline-5 ((t (:foreground ,pastel-magenta+1))))
 '(outline-7 ((t (:foreground ,pastel-darkblue))))
 '(outline-8 ((t (:foreground ,pastel-gray-1))))
 ;; howm
 '(howm-menu-key-face ((t (:foreground ,pastel-orange))))
 '(howm-menu-list-face ((t (nil))))
 '(howm-mode-keyword-face ((t (:foreground ,pastel-blue+1))))
 '(howm-mode-ref-face ((t (:foreground ,pastel-blue+1))))
 '(howm-mode-wiki-face ((t (:foreground ,pastel-blue+1))))
 '(howm-reminder-deadline-face ((t (:foreground ,pastel-red+1))))
 '(howm-reminder-defer-face ((t (:foreground ,pastel-magenta+1))))
 '(howm-reminder-done-face ((t (nil))))
 '(howm-reminder-late-deadline-face ((t (:background ,pastel-red :foreground ,pastel-black+1))))
 '(howm-reminder-normal-face ((t (:foreground ,pastel-blue))))
 '(howm-reminder-schedule-face ((t (:foreground ,pastel-green))))
 '(howm-reminder-today-face ((t (:background ,pastel-orange+1 ))))
 '(howm-reminder-todo-face ((t (:foreground ,pastel-purple))))
 '(howm-reminder-tomorrow-face ((t (:background ,pastel-pink :foreground ,pastel-black-1))))
 '(howm-view-empty-face ((t (:background ,pastel-blue))))
 '(howm-view-hilit-face ((t (:foreground ,pastel-red))))
 '(howm-view-name-face ((t (:background  ,pastel-blue :foreground ,pastel-white+1))))
 '(howm-mode-title-face ((t (:foreground ,pastel-yellow))))
 '(howm-mode-keyword-face ((t (:foreground ,pastel-blue))))
 '(howm-mode-ref-face ((t (:foreground ,pastel-blue))))
 '(action-lock-face ((t (:underline t :foreground ,pastel-blue)))))

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
