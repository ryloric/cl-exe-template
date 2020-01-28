(defsystem "cl-exe-template"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-exe-template/tests"))))

(defsystem "cl-exe-template/tests"
  :author ""
  :license ""
  :depends-on ("cl-exe-template"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-exe-template"
  :perform (test-op (op c) (symbol-call :rove :run c)))
