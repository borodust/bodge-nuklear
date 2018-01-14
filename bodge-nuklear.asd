(asdf:defsystem bodge-nuklear
  :description "Wrapper over nuklear IM GUI library for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi claw)
  :serial t
  :components ((:file "packages")
               (:file "libnuklear")
               (:static-file "bodge_nuklear.h")
               (:file "claw")
               (:file "nuklear")
               (:module spec)
               (:module lib)
	       (:module nuklear-lib :pathname "lib/nuklear/")))
