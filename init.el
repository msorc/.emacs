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
; config editor behavior
(load "~/.emacs.d/init-editor")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(graphviz-dot-view-command "xdot %s")
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (company haxe-mode e2ansi reverse-im clojure-cheatsheet queue)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 120 :width normal)))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
