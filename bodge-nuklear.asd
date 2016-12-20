(in-package :cl-user)

(defpackage :bodge-nuklear.def
  (:use :cl :asdf))

(in-package :bodge-nuklear.def)


(defsystem bodge-nuklear
  :description "Wrapper over nuklear IM GUI library for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi cl-autowrap cl-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libnuklear")
               (:file "autowrap")
               (:file "nuklear")
               (:module spec)
               (:module lib
                        :pathname "lib/"
                        :components ((:static-file "bodge_nuklear.h")))))
