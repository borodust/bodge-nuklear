(claw:c-include "bodge_nuklear.h" bodge-nuklear
  :in-package (:%nuklear :%nk)
  :sysincludes (:nuklear-lib)
  :include-definitions ("(nk|NK).?_\\w*")
  :rename-symbols (claw:in-pipeline
                   (claw:by-changing "nk__begin" 'command-list-begin)
                   (claw:by-changing "nk__next" 'command-list-next)
                   (claw:by-changing "nk__draw_begin" 'draw-list-begin)
                   (claw:by-changing "nk__draw_next" 'draw-list-next)
                   (claw:by-changing "gid_t" 'platform-gid-t)
                   (claw:by-removing-prefixes "nk_" "NK_" "NK._")))
