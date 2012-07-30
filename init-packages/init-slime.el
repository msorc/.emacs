(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
(add-to-list 'load-path "~/usr/share/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup)

