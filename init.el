;;
;(load-file "~/.emacs.d/org-dotemacs.el")
;(org-dotemacs-load-file "" "~/.emacs.d/dotemacs.org")

; some temporary hacks


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

; init el-get and packages
(load "~/.emacs.d/init-el-get")

; some custom packages load
(load "~/.emacs.d/init-custom-packages")

; config editor behavior
(load "~/.emacs.d/init-editor")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(graphviz-dot-view-command "xdot %s")
 '(haskell-mode-hook
   '(turn-on-haskell-indentation turn-on-haskell-doc-mode interactive-haskell-mode) t)
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(dylan d-mode hyperbole company haxe-mode e2ansi reverse-im clojure-cheatsheet queue))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 102 :width normal))))
 '(cursor ((t (:background "gainsboro" :foreground "blue")))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
