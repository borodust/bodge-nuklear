(asdf:defsystem bodge-nuklear
  :description "Wrapper over nuklear IM GUI library for cl-bodge system"
  :version "1.0.0"
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


(asdf:defsystem bodge-nuklear/renderer
  :description "Basic OpenGL renderer for bodge-nuklear"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria bodge-nuklear claw)
  :serial t
  :components ((:file "renderer")))


(asdf:defsystem bodge-nuklear/example
  :description "bodge-nuklear basic example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cl-opengl cffi claw clutz bodge-nanonk
                          nuklear-blob bodge-nuklear bodge-nuklear/renderer)
  :components ((:file "example")))
