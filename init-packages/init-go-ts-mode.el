(add-hook 'go-ts-mode-hook
          (lambda ()
            (setq go-ts-mode-indent-offset 4)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)
;;            (lsp-deferred)
            ))
