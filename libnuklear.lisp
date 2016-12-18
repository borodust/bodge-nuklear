(in-package :bodge-nuklear)


(cffi:define-foreign-library (libnuklear
                              :search-path #.(merge-pathnames
                                              "lib/"
                                              (directory-namestring
                                               (or *compile-file-truename* *load-truename*))))
  (:darwin (:or "libnuklear.1.dylib" "libnuklear.dylib"))
  (:unix (:or "libnuklear.so.1" "libnuklear.so"))
  (t (:default "libnuklear.1" "libnuklear")))


(cffi:use-foreign-library libnuklear)
