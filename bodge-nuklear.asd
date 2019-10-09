(asdf:defsystem :bodge-nuklear
  :description "Wrapper over Nuklear IM GUI library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :claw :claw-utils :cffi-c-ref)
  :serial t
  :pathname "src/"
  :components ((:file "packages")
               (:static-file "bodge_nuklear.h")
               (:file "claw")
               (:file "nuklear")
               (:module :spec)
               (:module :lib)
	       (:module :nuklear-lib :pathname "lib/nuklear/")))


(asdf:defsystem :bodge-nuklear/example
  :description "bodge-nuklear basic example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cl-opengl :claw :bodge-host
               :bodge-glad :nuklear-blob :bodge-nuklear :nuklear-renderer-blob
               :bodge-nuklear-renderer :bordeaux-threads :cl-muth :bodge-libc-essentials)
  :pathname "src/"
  :components ((:file "example")))
