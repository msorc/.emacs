;(add-hook 'clojure-mode-hook #'paredit-mode)
(eval-after-load 'clojure-mode
  '(progn
     (define-key clojure-mode-map (kbd "C-c C-h") #'clojure-cheatsheet)))

