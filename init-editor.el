
;;  ____________________________________________________________________________
;;; MINIBUFFER COMPLETION
;; <https://www.gnu.org/software/emacs/manual/html_mono/emacs.html#Icomplete>

(require 'icomplete)

(setq icomplete-in-buffer t
      icomplete-compute-delay 0.1
      icomplete-delay-completions-threshold 10000
      icomplete-show-matches-on-no-input t
      icomplete-hide-common-prefix nil)

;; vertical completion with fido-vertical
;; (fido-vertical-mode 1)

(ido-mode t)

;; winner-mode
; Ctrl+c ←  - will restore the previous window configuration
; Ctrl+c →  - will redo the configuration you just destroyed
(winner-mode 1)

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

(setq column-number-mode t)

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

;; desktop
(desktop-save-mode t)

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
                    :height 100
                    :weight 'normal
                    :width 'normal)

;; move between buffers
;; allows to move point from window to window using Shift + arrow keys.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; no bell sound
(setq ring-bell-function 'ignore)

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

;; rainbow delimeters
;; (add-hook 'prog-mode-hook 'rainbow-delimiters-mode 'rainbow-identifiers-mode)

;; init PATH and other VARS
(exec-path-from-shell-initialize)
