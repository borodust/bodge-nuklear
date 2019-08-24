(uiop:define-package :%nuklear
  (:nicknames :%nk)
  (:use))

(claw:defwrapper (nuklear::bodge-nuklear
                  (:includes :nuklear-lib '(:nuklear-lib "../"))
                  (:include-definitions "^(nk|NK).?_\\w*")
                  (:exclude-definitions "FILE_LINE"))
  :in-package :%nuklear
  :trim-enum-prefix t
  :with-adapter (:static '(:nuklear-lib "../adapter.c"))
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:in-pipeline
                      (:by-changing "nk__begin" 'command-list-begin)
                      (:by-changing "nk__next" 'command-list-next)
                      (:by-changing "nk__draw_begin" 'draw-list-begin)
                      (:by-changing "nk__draw_next" 'draw-list-next)
                      (:by-changing "gid_t" 'platform-gid-t)
                      (:by-removing-prefixes "nk_" "NK_" "NK._")))
