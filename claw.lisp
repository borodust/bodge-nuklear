(claw:c-include "bodge_nuklear.h" bodge-nuklear
 :in-package :%nuklear
 :sysincludes (:nuklear-lib)
 :include-sources ("nuklear.h")
 :rename-symbols (claw:in-pipeline
                  (claw:by-changing "nk__begin" 'command-list-begin)
                  (claw:by-changing "nk__next" 'command-list-next)
                  (claw:by-changing "gid_t" 'platform-gid-t)
                  (claw:by-removing-prefixes "nk_" "NK_" "NK._")))
