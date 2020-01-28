(defpackage cl-exe-template/tests/main
  (:use :cl
        :cl-exe-template
        :rove))
(in-package :cl-exe-template/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-exe-template)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
