(in-package :bodge-nuklear)


(cffi:define-foreign-library (libnuklear
                              :search-path (asdf:system-relative-pathname :bodge-nuklear "lib/"))
  (:darwin (:or "libnuklear.1.dylib" "libnuklear.dylib"))
  (:unix (:or "libnuklear.so.1" "libnuklear.so"))
  (:windows "libnuklear.dll"))


(cffi:use-foreign-library libnuklear)
