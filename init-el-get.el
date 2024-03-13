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
        ; env
        exec-path-from-shell
	; org-mode 
	; text editing
        autopair
        markdown-mode
	; text navigation
	ace-jump-mode
        ido-vertical-mode
        ido-hacks
        ido-ubiquitous
        ; undo/redo history
        undo-tree
	; autocomplete
	; auto-complete auto-complete-extension ; auto-complete-css auto-complete-ruby
        company-mode
	; file system
	sunrise-commander
        ;; lsp
        ;; lsp-mode
        ;; interface
        kpm-list
        ;; design
        graphviz-dot-mode
	;; programming
        dumb-jump
        projectile      ; project organising
	; css-mode ;nxhtml ; html & css
	magit           ; git
	js2-mode        ; javascript
        typescript-mode ; ts
	paredit ;slime 	; lisp
	sicp            ; scheme
        skewer-mode ; trident-mode ; js live
        cmake-mode
        ;; ; fsharp
        ;; fsharp-mode
        ; ocaml
        ocaml-ts-mode
        ; go
        ;go-ts-mode
        ; d
        d-mode
	; ruby
	enh-ruby-mode ;flymake-ruby 
        ruby-block ruby-end ruby-electric
	rspec-mode
	rvm
	; rails
        ; scheme
        geiser
        ;rinari 
        rhtml-mode haml-mode sass-mode slim-mode
	feature-mode 	; cucumber
	yaml-mode 	; yaml
	))
      
(el-get 'sync my-packages)
