(add-to-list 'load-path "~/.emacs.d/custom-packages")
; rcodetools
(require 'rcodetools)
; haxe
(require 'haxe-mode)
; txl
(require 'txl-mode)
(add-to-list 'auto-mode-alist '("\\.\\([tT]xl\\|[gG]rm\\|[gG]rammar\\|[rR]ul\\(es\\)?\\|[mM]od\\(ule\\)?\\)$" . txl-mode))