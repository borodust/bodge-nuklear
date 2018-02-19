(in-package :nuklear)


(cffi:define-foreign-library (libnuklear
                              :search-path (asdf:system-relative-pathname :bodge-nuklear "lib/"))
  (:darwin "libnuklear.dylib.bodged")
  (:unix "libnuklear.so.bodged")
  (:windows "libnuklear.dll.bodged"))
