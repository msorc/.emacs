(defun markdown-html (buffer)
  (princ (with-current-buffer buffer
           (format "<!DOCTYPE html><html><title>Impatient Markdown</title><xmp theme=\"united\" style=\"display:none;\"> %s  </xmp><script src=\"http://strapdownjs.com/v/0.2/strapdown.js\"></script></html>" (buffer-substring-no-properties (point-min) (point-max))))
         (current-buffer)))
;; M-x httpd-start
;; in the buffers you're interested to live preview: M-x impatient-mode
;; http://localhost:8080/imp
;; M-x imp-set-user-filter RET markdown-html RET
