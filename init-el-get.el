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
	; autocomplete
	auto-complete auto-complete-extension auto-complete-emacs-lisp auto-complete-etags auto-complete-css auto-complete-ruby
	; file system
	sunrise-commander
        ;; interface
        kpm-list
	;; programming
        ;ctags
	; coffescript
	coffee-mode
	; html & css
	css-mode 
	nxhtml
	; git
	magit
	; javascript
	js2-mode
	; lisp
	paredit slime
	; scheme
	sicp
	; ruby
	Enhanced-Ruby-Mode flymake-ruby ruby-block ruby-end ruby-electric
	rdebug
        rspec-mode
	rvm
	; rails
	rhtml-mode haml-mode sass-mode
	rinari
	; cucumber
	feature-mode
	; yaml
	yaml-mode
	))
      
(el-get 'sync my-packages)
