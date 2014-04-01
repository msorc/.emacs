;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; winner-mode
; Ctrl+c ←  - will restore the previous window configuration
; Ctrl+c →  - will redo the configuration you just destroyed
(winner-mode 1)

; if the entered string does not match any buffer name, any buffer name containing
; the entered characters in the given sequence will match.
(setq ido-enable-flex-matching t)

;; editor configs
(setq make-backup-files nil)
(setq query-replace-highlight t)
(setq search-highlight t)
(setq font-lock-maximum-decoration t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline t)
(setq major-mode 'text-mode)
; don't use tabs
(setq-default indent-tabs-mode nil)

;; turn on paren matching
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; hints for incomplete emacs commands
(setq icomplete-mode t)

;; Get rid of the startup screen
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;; default directory
(setq default-directory "~/projects")

;; Get rid of toolbar, scrollbar, menubar
(progn
  (tool-bar-mode -1)
  (menu-bar-mode)
  (scroll-bar-mode -1))

;; Centering code stolen from somewhere and restolen from
;; http://www.chrislott.org/geek/emacs/dotemacs.html
;; centers the screen around a line...
(global-set-key [(control l)]  'centerer)
(defun centerer ()
   "Repositions current line: once middle, twice top, thrice bottom"
   (interactive)
   (cond ((eq last-command 'centerer2)  ; 3 times pressed = bottom
          (recenter -1))
         ((eq last-command 'centerer1)  ; 2 times pressed = top
          (recenter 0)
          (setq this-command 'centerer2))
         (t                             ; 1 time pressed = middle
          (recenter)
          (setq this-command 'centerer1))))

;; maxframe
;(add-hook 'window-setup-hook 'maximize-frame t)
;(add-hook 'window-setup-hook 'ecb-redraw-layout t)

(set-background-color "#2b2b2b")
(set-foreground-color "white")

;; modeline
;; (set-face-background 'modeline "DarkRed")
;; (set-face-foreground 'modeline "white")
;; (set-face-foreground 'mode-line "blue4")
;; (set-face-background 'mode-line "#808080")
;; (set-face-attribute 'mode-line nil :font "Tahoma")
;; (set-face-attribute 'mode-line nil :height 0.9)
;; (set-face-attribute 'mode-line nil :box ":style nil")

;; (set-face-foreground 'mode-line-inactive "black")
;; (set-face-background 'mode-line-inactive "#808080")
;; (set-face-attribute 'mode-line-inactive nil :box ":style nil")

;; (set-face-foreground 'mode-line-highlight "#008c84")
;; (set-face-background 'mode-line-highlight "#303030")
;; (set-face-attribute 'mode-line-highlight nil :box ":line-width 0 :style nil")

;; (set-face-foreground 'mode-line-buffer-id "#003e00")
;; (set-face-foreground 'which-func "#912033")

;; color-theme
;(add-to-list  'load-path "~/.emacs.d/packages/color-theme")
;(require 'color-theme)
;    (color-theme-initialize)
;    (color-theme-arjen)

;; font
(set-face-attribute 'default nil
                    :family "Monospace"
                    :height 90
                    :weight 'normal
                    :width 'normal)

;; move between buffers
;; allows to move point from window to window using Shift + arrow keys.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; comment code
;; toggle comment
;;; allow-line-as-region-for-function adds an "-or-line" version of
;;; the given comment function which (un)comments the current line is
;;; the mark is not active.  This code comes from Aquamac's osxkeys.el
;;; and is licensed under the GPL
(defmacro allow-line-as-region-for-function (orig-function)
`(defun ,(intern (concat (symbol-name orig-function) "-or-line"))
   ()
   ,(format "Like `%s', but acts on the current line if mark is not active." orig-function)
   (interactive)
   (if mark-active
       (call-interactively (function ,orig-function))
     (save-excursion
       ;; define a region (temporarily) -- so any C-u prefixes etc. are preserved.
       (beginning-of-line)
       (set-mark (point))
       (end-of-line)
       (call-interactively (function ,orig-function))))))

(defun define-toggle-comment-line ()
  "Add or-line (un)comment function if not already defined"
  (unless (fboundp 'comment-or-uncomment-region-or-line)
    (allow-line-as-region-for-function comment-or-uncomment-region)))

(define-toggle-comment-line)
(global-set-key (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)

;; Delete all spaces and tabs around the point, leaving just one space
;; (or N spaces if you supply N as a prefix argument like C-4 C-c j)
(global-set-key (kbd "C-c j") 'just-one-space)
