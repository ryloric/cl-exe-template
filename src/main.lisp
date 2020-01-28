(defpackage cl-exe-template
  (:use :cl)
  (:export
   #:entry))

(in-package :cl-exe-template)

(defun entry ()
  (print "Hello World!"))
