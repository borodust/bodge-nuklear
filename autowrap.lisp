(cl:in-package :bodge-nuklear)


(bodge-autowrap:c-include "bodge_nuklear.h" bodge-nuklear
 :package :%nuklear
 :sysincludes (:nuklear-lib)
 :include-sources ("nuklear.h")
 :symbol-exceptions (("nk__begin" command-list-begin)
		     ("nk__next" command-list-next))
 :symbol-regex (("(nk|NK)_\\w*" 3)
		("NK.{1}_\\w*" 4)))
