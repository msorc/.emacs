(with-eval-after-load 'lsp-mode
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (add-hook 'ruby-ts-mode-hook #'lsp-deferred)
  ;(add-hook 'go-ts-mode-hook #'lsp-deferred)
  )

