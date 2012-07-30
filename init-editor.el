

;; Interactively Do Things
(require 'ido)
(ido-mode t)
; if the entered string does not match any buffer name, any buffer name containing
; the entered characters in the given sequence will match.
(setq ido-enable-flex-matching t)
