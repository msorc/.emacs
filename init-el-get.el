(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

; Packages initialization files
(setq el-get-user-package-directory "~/.emacs.d/init-packages")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

; Packages
(setq my-packages
      '(maxframe 
	org-mode 
	; text editing
        autopair
	; text navigation
	ace-jump-mode
        ; undo/redo history
        undo-tree
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
	css-mode nxhtml ; html & css
	magit           ; git
	js2-mode        ; javascript
	paredit slime 	; lisp
	sicp            ; scheme
        ;lua
        lua-mode flymake-lua
	; ruby
	Enhanced-Ruby-Mode ;flymake-ruby 
        ruby-block ruby-end ruby-electric
	rdebug rspec-mode
	rvm
	; rails
        rinari rhtml-mode haml-mode sass-mode ;slim-mode
	feature-mode 	; cucumber
	yaml-mode 	; yaml
	))
      
(el-get 'sync my-packages)
