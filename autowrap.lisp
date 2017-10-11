(cl:in-package :bodge-nuklear)


(bodge-autowrap:c-include "bodge_nuklear.h" bodge-nuklear
 :package :%nuklear
 :sysincludes (:nuklear-lib)
 :include-sources ("nuklear.h")
 :symbol-exceptions (("nk__begin" command-list-begin)
		     ("nk__next" command-list-next))
 :symbol-prefix ("nk_" "NK_" "NK._"))
