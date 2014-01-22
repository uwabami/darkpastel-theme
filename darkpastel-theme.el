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

(let ((class '((class color) (min-colors 89)))
      (my:low-black   "#020202")
      (my:black       "#242424")
      (my:hi-black    "#4c4c4c")
      (my:low-red     "#a52424")
      (my:red         "#ff4c4c")
      (my:hi-red      "#ff7f7f")
      (my:low-green   "#4ca54c")
      (my:green       "#4cff4c")
      (my:hi-green    "#7fff7f")
      (my:low-yellow  "#a5a54c")
      (my:yellow      "#ffff4c")
      (my:hi-yellow   "#ffff7f")
      (my:low-blue    "#4c4ca5")
      (my:blue        "#4c4cff")
      (my:hi-blue     "#7f7fff")
      (my:low-cyan    "#4ca5a5")
      (my:cyan        "#4cffff")
      (my:hi-cyan     "#7fffff")
      (my:low-magenta "#a54ca5")
      (my:magenta     "#ff4cff")
      (my:hi-magenta  "#ff7fff")
      (my:low-white   "#777777")
      (my:white       "#cccccc")
      (my:hi-white    "#f6f3e7")
      ;; additional colors
      (my:pink        "#ff7fbf")
      (my:purple      "#bf7fff")
      (my:orange      "#ffbf7f")
      (my:sky         "#7fbfff")
      )
  (custom-theme-set-faces
   'darkpastel
   ;; basic coloring
       `(default
          ((((class color) (min-colors 4096))
            (:foreground ,my:hi-white :background ,my:black))
           (((class color) (min-colors 256))
            (:foreground ,my:hi-white :background ,my:black))
           (,class
            (:foreground ,my:hi-white :background ,my:black))))
       `(cursor                              ((,class (:background ,my:low-cyan ))))
       `(escape-glyph                        ((,class (:foreground ,my:low-yellow :weight bold))))
       `(fringe                              ((,class (:background ,my:low-black ))))
       `(highlight                           ((,class (:background ,my:hi-black :underline t ))))
       `(region                              ((,class (:background ,my:hi-black ))))
       `(secondary-selection                 ((,class (:background ,my:low-blue ))))
       `(minibuffer-prompt                   ((,class (:foreground ,my:red ))))
       `(mode-line                           ((,class (:foreground ,my:hi-white :background ,my:hi-black
                                                                   :box (:line-width -1 :style released-button)))))
       `(mode-line-inactive                  ((,class (:foreground ,my:black :background ,my:hi-black ))))
       `(mode-line-buffer-id                 ((,class (:weight bold))))
       `(mode-line-emphasis                  ((,class (:weight bold))))
       `(mode-line-highlight                 ((,class (:box (:line-width -1 :color ,my:white :style released-button)))))
       `(button                              ((,class (:foreground ,my:hi-white
                                                                   :box (:line-width -1 :style released-button )))))
       `(link                                ((,class (:foreground ,my:hi-cyan :underline t ))))
       `(link-visited                        ((,class (:foreground ,my:magenta :underline t ))))
       `(header-line                         ((,class (:foreground ,my:green ))))
       `(tooltip                             ((,class (:foreground ,my:black :background ,my:yellow ))))
       `(shadow                              ((,class (:foreground ,my:white ))))
       `(isearch                             ((,class (:foreground ,my:hi-white :background ,my:low-blue ))))
       `(isearch-fail                        ((,class (:background ,my:low-red ))))
       `(lazy-highlight                      ((,class (:foreground ,my:hi-white :background ,my:low-green ))))
       `(match                               ((,class (:background ,my:low-blue ))))
       `(next-error                          ((,class (:foreground ,my:magenta ))))
       `(query-replace                       ((,class (:background ,my:low-magenta ))))
       `(trailing-whitespace                 ((,class (:background ,my:hi-red ))))
       `(font-lock-builtin-face              ((,class (:foreground ,my:hi-blue ))))
       `(font-lock-comment-delimiter-face    ((,class (:foreground ,my:low-white ))))
       `(font-lock-comment-face              ((,class (:foreground ,my:low-white ))))
       `(font-lock-constant-face             ((,class (:foreground ,my:orange ))))
       `(font-lock-doc-face                  ((,class (:foreground ,my:low-green ))))
       `(font-lock-doc-string-face           ((,class (:foreground ,my:low-green ))))
       `(font-lock-function-name-face        ((,class (:foreground ,my:purple ))))
       `(font-lock-keyword-face              ((,class (:foreground ,my:hi-red ))))
       `(font-lock-negation-char-face        ((,class (:foreground ,my:hi-cyan ))))
       `(font-lock-preprocessor-face         ((,class (:foreground ,my:pink ))))
       `(font-lock-regexp-grouping-backslash ((,class (:foreground ,my:red :bold t))))
       `(font-lock-regexp-grouping-construct ((,class (:foreground ,my:purple :bold t))))
       `(font-lock-string-face               ((,class (:foreground ,my:hi-green ))))
       `(font-lock-type-face                 ((,class (:foreground ,my:hi-yellow ))))
       `(font-lock-variable-name-face        ((,class (:foreground ,my:sky ))))
       `(font-lock-warning-face              ((,class (:foreground ,my:hi-magenta :weight bold))))
       `(show-paren-match-face               ((,class (:foreground nil :background nil :underline  ,my:hi-yellow  :weight bold))))
       `(show-paren-mismatch-face            ((,class (:foreground nil :background nil :underline  ,my:hi-red :weight bold))))

       ;; Wanderlust
       ;;; header
       `(wl-highlight-message-subject-header-contents     ((,class (:foreground ,my:red :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-from-header-contents        ((,class (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-date-header-contents        ((,class (:foreground ,my:green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-important-header-contents   ((,class (:foreground ,my:magenta :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-important-header-contents2  ((,class (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,my:white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-headers                     ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-header-contents             ((,class (:foreground ,my:white :bold nil :italic nil :weight normal ))))
       ;;; citation
       `(wl-highlight-message-citation-header             ((,class (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-1                ((,class (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-2                ((,class (:foreground ,my:hi-yellow :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-3                ((,class (:foreground ,my:hi-blue  :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-4                ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-5                ((,class (:foreground ,my:hi-magenta :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-6                ((,class (:foreground ,my:purple :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-7                ((,class (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-8                ((,class (:foreground ,my:hi-red :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-9                ((,class (:foreground ,my:white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-message-cited-text-10               ((,class (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
       ;;; signature
       `(wl-highlight-message-signature                   ((,class (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
       ;;; summary mode
       `(wl-highlight-summary-high-read-face              ((,class (:foreground ,my:hi-green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-high-unread-face            ((,class (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-low-read-face               ((,class (:foreground ,my:green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-low-unread-face             ((,class (:foreground ,my:sky :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-normal-face                 ((,class (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-killed-face                 ((,class (:foreground ,my:low-white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-new-face                    ((,class (:foreground ,my:red :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-unread-face                 ((,class (:foreground ,my:red :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-important-face              ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-important-flag-face         ((,class (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-flagged-face                ((,class (:foreground ,my:hi-yellow :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-displaying-face             ((,class (:underline t :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-forwarded-face              ((,class (:foreground ,my:yellow :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-answered-face               ((,class (:foreground ,my:low-cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-copied-face                 ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-temp-face                   ((,class (:foreground ,my:pink :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-resend-face                 ((,class (:foreground ,my:orange :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-deleted-face                ((,class (:foreground ,my:hi-black :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-prefetch-face               ((,class (:foreground ,my:blue :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-refiled-face                ((,class (:foreground ,my:green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-target-face                 ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-disposed-face               ((,class (:foreground ,my:white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-summary-thread-top-face             ((,class (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-thread-indent-face                  ((,class (:underline t :bold nil :italic nil :weight normal ))))
       ;;; folder
       `(wl-highlight-folder-zero-face                    ((,class (:foreground ,my:hi-white :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-opened-face                  ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-unread-face                  ((,class (:foreground ,my:blue :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-unknown-face                 ((,class (:foreground ,my:cyan :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-few-face                     ((,class (:foreground ,my:red :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-many-face                    ((,class (:foreground ,my:pink :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-closed-face                  ((,class (:foreground ,my:green :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-killed-face                  ((,class (:foreground ,my:hi-black :bold nil :italic nil :weight normal ))))
       `(wl-highlight-folder-path-face                    ((,class (:underline t :bold nil :italic nil :weight normal ))))

       ;; org-mode
       `(org-level-1 ((,class (:bold t :foreground ,my:hi-yellow))))
       `(org-level-2 ((,class (:bold t :foreground ,my:hi-green))))
       `(org-level-3 ((,class (:bold t :foreground ,my:hi-red))))
       `(org-level-4 ((,class (:bold t :foreground ,my:hi-blue))))
       `(org-level-5 ((,class (:bold t :foreground ,my:hi-magenta))))
       `(org-level-6 ((,class (:bold t :foreground ,my:purple))))
       `(org-level-7 ((,class (:bold t :foreground ,my:orange))))
       `(org-level-8 ((,class (:bold t :foreground ,my:hi-black))))
       ;; hoem-mode
       `(howm-mode-title-face ((,class (:bold t :foreground ,my:hi-yellow))))
       )
  (custom-theme-set-variables
   'darkpastel
   '(ansi-color-names-vector
     ["#242424"   ; black
      "#ff4c4c"   ; red
      "#4cff4c"   ; green
      "#ffff4c"   ; yellow
      "#4c4cff"   ; blue
      "#4cffff"   ; cyan
      "#ff4cff"   ; magenta
      "#f6f3e8"   ; white
      ]))
  ) ;; top (let

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'darkpastel)
;; Local Variables:
;; coding: utf-8-unix
;; after-save-hook: (lambda () (byte-compile-file (buffer-file-name)))
;; indent-tabs-mode: nil
;; End:
;;
;;; darkpastel-theme.el ends here
