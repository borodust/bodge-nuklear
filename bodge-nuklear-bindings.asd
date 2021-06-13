;; Generated by :claw at 2021-06-13T17:09:45.712417+03:00
(asdf:defsystem #:bodge-nuklear-bindings
  :description "Bindings generated by bodge-nuklear/wrapper"
  :author "CLAW"
  :license "Public domain"
  :defsystem-depends-on (:trivial-features)
  :depends-on (:uiop :cffi :claw-utils)
  :components
  ((:file "bindings/x86_64-pc-linux-gnu" :if-feature
    (:and :x86-64 :linux))
   (:file "bindings/x86_64-w64-mingw32" :if-feature
    (:and :x86-64 :windows))
   (:file "bindings/x86_64-apple-darwin-gnu" :if-feature
    (:and :x86-64 :drawin))))