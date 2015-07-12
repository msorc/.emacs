; some temporary hacks
(load "~/.emacs.d/init-pre-hacks")
; init el-get and packages
(load "~/.emacs.d/init-el-get")
; config editor behavior
(load "~/.emacs.d/init-editor")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(graphviz-dot-view-command "xdot %s"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
