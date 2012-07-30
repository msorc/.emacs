(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

; Path where packages are installed
(setq el-get-dir "~/.emacs.d/el-get/packages")
; Packages initialization files
(setq el-get-user-package-directory "~/.emacs.d/init-packages")
; Packages
(setq my-packages
      '(maxframe 
	org-mode 
	; programming
	flymake-ruby

	slime
	rinari rdebug ruby-mode rvm))
      
(el-get 'sync my-packages)

(load "~/.emacs.d/init-editor")
