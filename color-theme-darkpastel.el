;; -*- mode: emacs-lisp; coding: utf-8-unix; indent-tabs-mode: nil -*-
;;; color-theme-darkpastel.el
;;
;; Copyright(C) 2011 Youhei SASAKI All rights reserved.
;; $Lastupdate: 2012/03/30 04:23:00$
;;
;; Author: Youhei SASAKI <uwabami@gfd-dennou.org>
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

;; color defenitions
(defvar pastel-black-1      "#242424")
(defvar pastel-black        "#4f4f4f")
(defvar pastel-black+1      "#666666")
(defvar pastel-grey-1       "#888888")
(defvar pastel-grey         "#aaaaaa")
(defvar pastel-grey+1       "#cccccc")
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

(defun color-theme-darkpastel ()
  "my color theme - dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel"
  (interactive)
  (color-theme-install
   `(color-theme-darkpastel
     ;; color-theme mapping
     (
      (background-mode . dark)
      ;; (background-color . "unspecified-bg")
      ;; (background-color . ,pastel-black-1)
      ;; (foreground-color . "unspecified-fg")
      (foreground-color . ,pastel-white)
      (border-color .     ,pastel-black-1)
      (mouse-color .      ,pastel-green+1)
      )
     ;; ;; basic coloring
     (default ((t (:foreground ,pastel-white))))
     (cursor ((t (:background ,pastel-green ))))
     (region ((t (:background ,pastel-darkblue))))
     (mode-line ((t (:background ,pastel-black :foreground ,pastel-grey+1))))
     (mode-line-inactive ((t (:background ,pastel-black-1 :foreground ,pastel-grey))))
     (fringe ((t (:background ,pastel-black-1))))
     (minibuffer-prompt ((t (:background ,pastel-black-1 :foreground ,pastel-blue+1))))
     (isearch ((t (:foreground ,pastel-blue+1))))
     (lazy-highlight ((t (:background ,pastel-yellow :foreground ,pastel-black-1))))
     (highlight ((t (:background ,pastel-darkblue))))
     (link ((t (:foreground ,pastel-lightblue+1 :underline t))))
     (link-visited ((t (:underline t :foreground ,pastel-lightblue+1))))
     (button ((t (:underline t))))
     (header-line ((t (:foreground ,pastel-yellow+1 :background ,pastel-black :inverse-video nil :underlne t))))
     (show-paren-match ((t (:background ,pastel-darkblue))))
     (show-paren-mismatch ((t (:background ,pastel-purple :foreground ,pastel-white))))
     ;; basic font-lock
     (font-lock-builtin-face ((t (:foreground ,pastel-blue+1))))
     (font-lock-comment-face ((t (:foreground ,pastel-grey-1))))
     (font-lock-comment-delimiter-face ((t (:foreground ,pastel-grey-1))))
     (font-lock-constant-face ((t (:foreground ,pastel-orange))))
     (font-lock-function-name-face ((t (:foreground ,pastel-purple))))
     (font-lock-negation-char-face ((t (:foreground ,pastel-cyan))))
     (font-lock-preprocessor-face ((t (:foreground ,pastel-red))))
     (font-lock-keyword-face ((t (:foreground ,pastel-red+1))))
     (font-lock-string-face ((t (:foreground ,pastel-green))))
     (font-lock-type-face ((t (:foreground ,pastel-yellow))))
     (font-lock-variable-name-face ((t (:foreground ,pastel-blue+1))))
     (font-lock-warning-face ((t (:foreground ,pastel-magenta+1))))
     (font-lock-reference-face ((t (:foreground ,pastel-blue))))
     (font-lock-link-face ((t (:foreground ,pastel-cyan+1))))
     (font-lock-regexp-grouping-backslash ((t (:foreground ,pastel-orange+1))))
     (font-lock-regexp-grouping-construct ((t (:foreground ,pastel-blue+1))))
     (c-annotation-face ((t (:inherit font-lock-constant-face))))
     ;; italic, bold
     (italic ((t (:italic nil :slant normal ))))
     (bold ((t (:bold nil :weight normal))))
     (bold-italic ((t (:italic nil :bold nil :slant normal :weight normal ))))

     ;;; Wanderlust
     (wl-highlight-demo-face ((t (nil))))
     ;; header
     (wl-highlight-message-subject-header-contents  ((t (:foreground ,pastel-red :bold t))))
     (wl-highlight-message-from-header-contents ((t (:foreground ,pastel-yellow :bold t))))
     (wl-highlight-message-important-header-contents  ((t (:foreground ,pastel-magenta :bold t))))
     (wl-highlight-message-unimportant-header-contents ((t (:foreground ,pastel-grey :bold t))))
     (wl-highlight-message-date-header-contents ((t (:foreground ,pastel-green :bold t))))
     (wl-highlight-message-headers ((t (:foreground ,pastel-cyan :bold t))))
     (wl-highlight-message-header-contents ((t (:foreground ,pastel-grey :bold nil))))
     ;; citation
     (wl-highlight-message-citation-header ((t (:foreground ,pastel-lightgreen))))
     (wl-highlight-message-cited-text-1 ((t (:foreground ,pastel-emerald))))
     (wl-highlight-message-cited-text-2 ((t (:foreground ,pastel-cyan))))
     (wl-highlight-message-cited-text-3 ((t (:foreground ,pastel-lightblue))))
     (wl-highlight-message-cited-text-4 ((t (:foreground ,pastel-blue))))
     (wl-highlight-message-cited-text-5 ((t (:foreground ,pastel-purple))))
     (wl-highlight-message-cited-text-6 ((t (:foreground ,pastel-magenta))))
     (wl-highlight-message-cited-text-7 ((t (:foreground ,pastel-pink))))
     (wl-highlight-message-cited-text-8 ((t (:foreground ,pastel-red))))
     (wl-highlight-message-cited-text-9 ((t (:foreground ,pastel-orange))))
     (wl-highlight-message-cited-text-10 ((t (:foreground ,pastel-yellow))))
     (wl-highlight-message-signature ((t (:foreground ,pastel-white-1))))
     ;; summary
     (wl-highlight-summary-thread-top-face ((t (:foreground ,pastel-white))))
     (wl-highlight-summary-normal-face ((t (:foreground ,pastel-white))))
     (wl-highlight-summary-new-face ((t (:foreground ,pastel-red))))
     (wl-highlight-summary-unread-face ((t (:foreground ,pastel-red))))
     (wl-highlight-summary-important-face ((t (:foreground ,pastel-cyan))))
     (wl-highlight-summary-flagged-face ((t (:foreground ,pastel-yellow+1))))
     (wl-highlight-summary-displaying-face ((t (:underline t))))
     (wl-highlight-summary-forwarded-face ((t ((:forground ,pastel-yellow)))))
     (wl-highlight-summary-answered-face ((t ((:forground ,pastel-lightblue)))))
     (wl-highlight-summary-deleted-face ((t (:foreground ,pastel-darkblue))))
     (wl-highlight-summary-refiled-face ((t (:foreground ,pastel-green))))
     (wl-highlight-summary-target-face ((t (:foreground ,pastel-cyan))))
     (wl-highlight-thread-indent-face  ((t (:underline t))))
     (wl-highlight-folder-zero-face ((t (:foreground ,pastel-white))))
     (wl-highlight-folder-opened-face ((t (:foreground ,pastel-cyan))))
     (wl-highlight-folder-unread-face ((t (:foreground ,pastel-blue))))
     (wl-highlight-folder-unknown-face ((t (:foreground ,pastel-cyan))))
     (wl-highlight-folder-few-face ((t (:foreground ,pastel-red))))
     (wl-highlight-folder-many-face ((t (:foreground ,pastel-pink+1))))

     ;; ;; anything
     ;; ;; (anything-apt-installed ((t (:foreground "green"))))
     ;; ;; (anything-bmkext-file ((t (:foreground "Deepskyblue2"))))
     ;; ;; (anything-bmkext-gnus ((t (:foreground "magenta"))))
     ;; ;; (anything-bmkext-info ((t (:foreground "green"))))
     ;; ;; (anything-bmkext-man ((t (:foreground "Orange4"))))
     ;; ;; (anything-bmkext-no--file ((t (:foreground "grey"))))
     ;; ;; (anything-bmkext-w3m ((t (:foreground "yellow"))))
     ;; ;; (anything-bookmarks-su-face ((t (:foreground "red"))))
     ;; ;; (anything-dir-heading ((t (:background "Pink" :foreground "Blue"))))
     ;; ;; (anything-dir-priv ((t (:background "LightGray" :foreground "DarkRed"))))
     ;; ;; (anything-dired-symlink-face ((t (:foreground "DarkOrange"))))
     ;; ;; (anything-emms-playlist ((t (:foreground "Springgreen4" :underline t))))
     ;; ;; (anything-ffiles-prefix-face ((t (:background "yellow" :foreground "black"))))
     ;; ;; (anything-file-name ((t (:foreground "Blue"))))
     ;; ;; (anything-gentoo-match-face ((t (:foreground "red"))))
     ;; ;; (anything-header ((t (:underline t :inverse-video nil :background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     ;; ;; (anything-isearch-match ((t (:background "Yellow"))))
     ;; ;; (anything-overlay-line-face ((t (:background "IndianRed4" :underline t))))
     ;; ;; (anything-visible-mark ((t (:background "green1" :foreground "black"))))
     ;; ;; (anything-w3m-bookmarks-face ((t (:foreground "cyan1" :underline t))))

     ;; ;; ;;; org-mode
     ;; ;; (org-level-1 ((t (:foreground ,pastel-yellow+1))))
     ;; ;; (org-level-2 ((t (:foreground ,pastel-red+1))))
     ;; ;; (org-level-3 ((t (:foreground ,pastel-blue+1))))
     ;; ;; (org-level-4 ((t (:foreground ,pastel-green+1))))
     ;; ;; (org-level-5 ((t (:foreground ,pastel-orange+1))))
     ;; ;; (org-level-6 ((t (:foreground ,pastel-magenta+1))))
     ;; ;; (org-level-7 ((t (:foreground ,pastel-darkblue))))
     ;; ;; (org-level-8 ((t (:foreground ,pastel-grey-1))))
     ;; ;; ;;; outline
     ;; ;; (outline-1 ((t (:foreground ,pastel-yellow+1))))
     ;; ;; (outline-2 ((t (:foreground ,pastel-red+1))))
     ;; ;; (outline-3 ((t (:foreground ,pastel-blue+1))))
     ;; ;; (outline-4 ((t (:foreground ,pastel-green+1))))
     ;; ;; (outline-6 ((t (:foreground ,pastel-orange+1))))
     ;; ;; (outline-5 ((t (:foreground ,pastel-magenta+1))))
     ;; ;; (outline-7 ((t (:foreground ,pastel-darkblue))))
     ;; ;; (outline-8 ((t (:foreground ,pastel-grey-1))))
     ;; ;; ;;; howm
     ;; ;; (howm-menu-key-face ((t (:foreground ,pastel-orange))))
     ;; ;; (howm-menu-list-face ((t (nil))))
     ;; ;; (howm-mode-keyword-face ((t (:foreground ,pastel-blue+1))))
     ;; ;; (howm-mode-ref-face ((t (:foreground ,pastel-blue+1))))
     ;; ;; (howm-mode-wiki-face ((t (:foreground ,pastel-blue+1))))
     ;; ;; (howm-reminder-deadline-face ((t (:foreground ,pastel-red+1))))
     ;; ;; (howm-reminder-defer-face ((t (:foreground ,pastel-magenta+1))))
     ;; ;; (howm-reminder-done-face ((t (nil))))
     ;; ;; (howm-reminder-late-deadline-face ((t (:background ,pastel-red :foreground ,pastel-black+1))))
     ;; ;; (howm-reminder-normal-face ((t (:foreground ,pastel-blue))))
     ;; ;; (howm-reminder-schedule-face ((t (:foreground ,pastel-green))))
     ;; ;; (howm-reminder-today-face ((t (:background ,pastel-orange+1 ))))
     ;; ;; (howm-reminder-todo-face ((t (:foreground ,pastel-purple))))
     ;; ;; (howm-reminder-tomorrow-face ((t (:background ,pastel-pink :foreground ,pastel-black-1))))
     ;; ;; (howm-view-empty-face ((t (:background ,pastel-blue))))
     ;; ;; (howm-view-hilit-face ((t (:foreground ,pastel-red))))
     ;; ;; (howm-view-name-face ((t (:background  ,pastel-blue :foreground ,pastel-white+1))))
     ;; ;; (howm-mode-title-face ((t (:foreground ,pastel-yellow))))
     ;; ;; (howm-mode-keyword-face ((t (:foreground ,pastel-blue))))
     ;; ;; (howm-mode-ref-face ((t (:foreground ,pastel-blue))))
     ;; ;; (action-lock-face ((t (:underline t :foreground ,pastel-blue))))

     )))

(provide 'color-theme-darkpastel)
;;; template.el ends here
