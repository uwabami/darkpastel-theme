;;;; color-theme-darkpastel.el -- dark background and pastel color
;; -*- mode: emacs-lisp; coding: utf-8-unix; indent-tabs-mode: nil -*-
;;;
;;
;; Copyright(C) 2011 Youhei SASAKI All rights reserved.
;; $Lastupdate: 2014-04-30 23:46:53$
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
(defun darkpastel-pallet ()
  (progn
    ;; color def.
    (defvar my:low-black   "#020202")
    (defvar my:black       "#242424")
    (defvar my:hi-black    "#4c4c4c")
    (defvar my:low-red     "#a52424")
    (defvar my:red         "#ff4c4c")
    (defvar my:hi-red      "#ff7f7f")
    (defvar my:low-green   "#4ca54c")
    (defvar my:green       "#4cff4c")
    (defvar my:hi-green    "#7fff7f")
    (defvar my:low-yellow  "#a5a54c")
    (defvar my:yellow      "#ffff4c")
    (defvar my:hi-yellow   "#ffff7f")
    (defvar my:low-blue    "#4c4ca5")
    (defvar my:blue        "#4c4cff")
    (defvar my:hi-blue     "#7f7fff")
    (defvar my:low-cyan    "#4ca5a5")
    (defvar my:cyan        "#4cffff")
    (defvar my:hi-cyan     "#7fffff")
    (defvar my:low-magenta "#a54ca5")
    (defvar my:magenta     "#ff4cff")
    (defvar my:hi-magenta  "#ff7fff")
    (defvar my:low-white   "#777777")
    (defvar my:white       "#cccccc")
    (defvar my:hi-white    "#f6f3e7")
    ;; additional colors
    (defvar my:pink        "#ff7fbf")
    (defvar my:purple      "#bf7fff")
    (defvar my:orange      "#ffbf7f")
    (defvar my:sky         "#7fbfff")
    ))

;;;###autoload
(defun color-theme-darkpastel ()
  "my color theme - dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel"
  (interactive)
  (darkpastel-pallet)
  (color-theme-install
   `(color-theme-darkpastel
     ;; color-theme mapping
     (
      (background-mode . dark)
      (foreground-color . ,my:hi-white)
      (background-color . ,my:black)
      )
     ;; ;; basic coloring
     (default ((t (:foreground ,my:hi-white))))
     (cursor ((t (:background ,my:low-cyan ))))
     (region ((t (:background ,my:hi-black ))))
     (mode-line ((t (:foreground ,my:hi-white :background ,my:hi-black
                                 :box (:line-width -1 :style released-button)))))
     (mode-line-inactive ((t (:foreground ,my:black :background ,my:hi-black ))))
     (fringe ((t (:background ,my:low-black ))))
     (minibuffer-prompt ((t (:background ,pastel-black-1 :foreground ,pastel-blue+1))))
     (isearch ((t (:foreground ,my:red ))))
     (lazy-highlight ((t (:foreground ,my:hi-white :background ,my:low-green ))))
     (highlight ((t (:background ,my:hi-black :underline t ))))
     (link ((t (:foreground ,my:hi-cyan :underline t ))))
     (link-visited ((t (:foreground ,my:magenta :underline t ))))
     (button ((t (:foreground ,my:hi-white
                              :box (:line-width -1 :style released-button )))))
     (header-line ((t (:foreground ,my:green ))))
     (show-paren-match-face    ((t (:foreground nil :background nil :underline  ,my:hi-yellow  :weight bold))))
     (show-paren-mismatch-face ((t (:foreground nil :background nil :underline  ,my:hi-red :weight bold))))
     ;; basic font-lock
     (font-lock-builtin-face              ((t (:foreground ,my:hi-blue ))))
     (font-lock-comment-delimiter-face    ((t (:foreground ,my:low-white ))))
     (font-lock-comment-face              ((t (:foreground ,my:low-white ))))
     (font-lock-constant-face             ((t (:foreground ,my:orange ))))
     (font-lock-doc-face                  ((t (:foreground ,my:low-green ))))
     (font-lock-doc-string-face           ((t (:foreground ,my:low-green ))))
     (font-lock-function-name-face        ((t (:foreground ,my:purple ))))
     (font-lock-keyword-face              ((t (:foreground ,my:hi-red ))))
     (font-lock-negation-char-face        ((t (:foreground ,my:hi-cyan ))))
     (font-lock-preprocessor-face         ((t (:foreground ,my:pink ))))
     (font-lock-regexp-grouping-backslash ((t (:foreground ,my:red :bold t))))
     (font-lock-regexp-grouping-construct ((t (:foreground ,my:purple :bold t))))
     (font-lock-string-face               ((t (:foreground ,my:hi-green ))))
     (font-lock-type-face                 ((t (:foreground ,my:hi-yellow ))))
     (font-lock-variable-name-face        ((t (:foreground ,my:sky ))))
     (font-lock-warning-face              ((t (:foreground ,my:hi-magenta :weight bold))))

     ;;; Wanderlust
     ;; header
     (wl-highlight-message-subject-header-contents     ((t (:foreground ,my:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-from-header-contents        ((t (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-date-header-contents        ((t (:foreground ,my:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-important-header-contents   ((t (:foreground ,my:magenta :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-important-header-contents2  ((t (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-unimportant-header-contents ((t (:foreground ,my:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-headers                     ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-header-contents             ((t (:foreground ,my:white :bold nil :italic nil :weight normal ))))
     ;; citation
     (wl-highlight-message-citation-header             ((t (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-1                ((t (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-2                ((t (:foreground ,my:hi-yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-3                ((t (:foreground ,my:hi-blue  :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-4                ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-5                ((t (:foreground ,my:hi-magenta :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-6                ((t (:foreground ,my:purple :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-7                ((t (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-8                ((t (:foreground ,my:hi-red :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-9                ((t (:foreground ,my:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-cited-text-10               ((t (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
     ;;; signature
     (wl-highlight-message-signature                   ((t (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
     ;;; summary mode
     (wl-highlight-summary-high-read-face              ((t (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-high-unread-face            ((t (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-low-read-face               ((t (:foreground ,my:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-low-unread-face             ((t (:foreground ,my:sky :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-normal-face                 ((t (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-killed-face                 ((t (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-new-face                    ((t (:foreground ,my:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-unread-face                 ((t (:foreground ,my:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-face              ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-flag-face         ((t (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-flagged-face                ((t (:foreground ,my:hi-yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-displaying-face             ((t (:underline t :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-forwarded-face              ((t (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-answered-face               ((t (:foreground ,my:low-cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-copied-face                 ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-temp-face                   ((t (:foreground ,my:pink :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-resend-face                 ((t (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-deleted-face                ((t (:foreground ,my:hi-black :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-prefetch-face               ((t (:foreground ,my:blue :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-refiled-face                ((t (:foreground ,my:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-target-face                 ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-disposed-face               ((t (:foreground ,my:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-thread-top-face             ((t (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
     (wl-highlight-thread-indent-face                  ((t (:underline t :bold nil :italic nil :weight normal ))))
     ;;; folder
     (wl-highlight-folder-zero-face                    ((t (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-opened-face                  ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unread-face                  ((t (:foreground ,my:blue :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unknown-face                 ((t (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-few-face                     ((t (:foreground ,my:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-many-face                    ((t (:foreground ,my:pink :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-closed-face                  ((t (:foreground ,my:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-killed-face                  ((t (:foreground ,my:hi-black :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-path-face                    ((t (:underline t :bold nil :italic nil :weight normal ))))

     ;; org-mode
     (org-level-1 ((t (:bold t :foreground ,my:hi-yellow))))
     (org-level-2 ((t (:bold t :foreground ,my:hi-green))))
     (org-level-3 ((t (:bold t :foreground ,my:hi-red))))
     (org-level-4 ((t (:bold t :foreground ,my:hi-blue))))
     (org-level-5 ((t (:bold t :foreground ,my:hi-magenta))))
     (org-level-6 ((t (:bold t :foreground ,my:purple))))
     (org-level-7 ((t (:bold t :foreground ,my:orange))))
     (org-level-8 ((t (:bold t :foreground ,my:hi-black))))
     ;; howm-mode
     (howm-mode-title-face ((t (:bold t :foreground ,my:hi-yellow))))
     )))

;;;###autoload
(add-to-list 'color-themes
             `(color-theme-darkpastel
               "Dark background + pastel color"
               "Dark background + pastel color font-lock theme"))

(provide 'color-theme-darkpastel)
;;; color-theme-darkpastel.el ends here
