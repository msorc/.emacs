(add-hook 'go-mode-hook
          (lambda ()
            (setq go-ts-mode-indent-offset 4)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))
