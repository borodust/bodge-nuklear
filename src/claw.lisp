(claw:defwrapper (:bodge-nuklear/wrapper
                  (:headers "bodge_nuklear.h")
                  (:includes "src/" :nuklear-lib)
                  (:include-definitions "^(nk|NK).?_\\w*")
                  (:exclude-definitions "FILE_LINE")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :ppc64 :linux :big-endian) "powerpc64-pc-linux-gnu")
                            ((:and :ppc64 :linux :little-endian) "powerpc64le-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu"))
                  (:persistent :bodge-nuklear-bindings
                   :depends-on (:claw-utils)))
  :in-package :%nuklear
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :with-adapter (:static
                 :path '(:nuklear-lib "../adapter/adapter.c"))
  :symbolicate-names (:in-pipeline
                      (:by-changing "nk__begin" 'command-list-begin)
                      (:by-changing "nk__next" 'command-list-next)
                      (:by-changing "nk__draw_begin" 'draw-list-begin)
                      (:by-changing "nk__draw_next" 'draw-list-next)
                      (:by-changing "gid_t" 'platform-gid-t)
                      (:by-removing-prefixes "nk_" "NK_" "NK._")))
