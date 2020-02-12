(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

; Packages initialization files
(setq el-get-user-package-directory "~/.emacs.d/init-packages")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(require 'el-get-elpa)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

; Packages
(setq my-packages
      '(maxframe 
	; org-mode 
	; text editing
        autopair
	; text navigation
	ace-jump-mode
        ido-vertical-mode
        ido-hacks
        ido-ubiquitous
        ; undo/redo history
        undo-tree
	; autocomplete
	; auto-complete auto-complete-extension ; auto-complete-css auto-complete-ruby
	; file system
	sunrise-commander
        ;; lsp
        ;; lsp-mode
        ;; interface
        kpm-list
        ;; design
        graphviz-dot-mode
	;; programming
        projectile      ; project organising
	; css-mode ;nxhtml ; html & css
	magit           ; git
	js2-mode        ; javascript
        haxe-mode
        typescript-mode ; ts
	paredit ;slime 	; lisp
	sicp            ; scheme
        skewer-mode ; trident-mode ; js live
        cmake-mode
	; ruby
	enh-ruby-mode ;flymake-ruby 
        ruby-block ruby-end ruby-electric
	rspec-mode
	rvm
        ; clojure
        cider
        ;; clojure-cheatsheet
        ; haskell
        ; ghc
        ; ghc-mode
        ; ghci-completion
        ;; haskell-mode
	; rails
        ;rinari 
        rhtml-mode haml-mode sass-mode slim-mode
	feature-mode 	; cucumber
	yaml-mode 	; yaml
	))
      
(el-get 'sync my-packages)
