(add-to-list 'load-path "~/.emacs.d/custom-packages")
(require 'gambit)

(require 'colm-mode)

;; (add-to-list 'load-path "~/.emacs.d/custom-packages/emacs-treadmill")
;; (require 'treadmill) ; will not be required with MELPA package
;; (add-hook 'gerbil-mode-hook #'treadmill-gerbil-mode)

(add-hook 'go-ts-mode-hook
          (lambda ()
            (setq go-ts-mode-indent-offset 4)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)
            (lsp-deferred)
            ))
