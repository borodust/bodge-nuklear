(asdf:defsystem :bodge-nuklear
  :description "Wrapper over Nuklear IM GUI library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :bodge-nuklear-bindings)
  :serial t
  :pathname "src/"
  :components ((:file "packages")
               (:file "nuklear")))


(asdf:defsystem :bodge-nuklear/wrapper
  :description "Wrapper over Nuklear IM GUI library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :claw :claw-utils :cffi-c-ref)
  :serial t
  :components ((:file "src/claw")
	       (:module :nuklear-lib :pathname "src/lib/nuklear/")))


(asdf:defsystem :bodge-nuklear/example
  :description "bodge-nuklear basic example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cl-opengl :bodge-host
               :bodge-glad :nuklear-blob :bodge-nuklear :nuklear-renderer-blob
               :bodge-nuklear-renderer :bordeaux-threads :cl-muth :bodge-libc-essentials)
  :pathname "src/"
  :components ((:file "example")))
