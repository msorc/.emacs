(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

; Packages initialization files
(setq el-get-user-package-directory "~/.emacs.d/init-packages")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

; Packages
(setq my-packages
      '(maxframe 
	org-mode 
	; text editing
        autopair
	; text navigation
	ace-jump-mode
        ido-vertical-mode
        ido-hacks
        ido-ubiquitous
        ; undo/redo history
        undo-tree
        ; languages
        lojban lojban-mode
	; autocomplete
	auto-complete auto-complete-extension auto-complete-emacs-lisp auto-complete-etags auto-complete-css auto-complete-ruby
	; file system
	sunrise-commander
        ;; interface
        kpm-list
        ;; design
        graphviz-dot-mode
	;; programming
        projectile      ; project organising
	coffee-mode 	; coffescript
        livescript-mode ; livescript
	css-mode ;nxhtml ; html & css
	magit           ; git
	js2-mode        ; javascript
	paredit slime 	; lisp
	sicp            ; scheme
        skewer-mode trident-mode ; js live
        cmake-mode
	; ruby
	Enhanced-Ruby-Mode ;flymake-ruby 
        ruby-block ruby-end ruby-electric
	ruby-debug rspec-mode
	rvm
	; rails
        ;rinari 
        rhtml-mode haml-mode sass-mode slim-mode
	feature-mode 	; cucumber
	yaml-mode 	; yaml
	))
      
(el-get 'sync my-packages)
