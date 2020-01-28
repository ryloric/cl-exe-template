make-exe:
  sbcl --eval '(ql:quickload "cl-exe-template")' --eval '(asdf:make "cl-exe-template")' --eval '(quit)'