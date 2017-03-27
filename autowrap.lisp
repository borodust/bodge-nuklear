(cl:in-package :bodge-nuklear)


(autowrap:c-include
 '(bodge-nuklear lib "bodge_nuklear.h")
 :spec-path '(bodge-nuklear spec)
 :definition-package :%nuklear
 :sysincludes (append (list (namestring
			     (asdf:component-pathname
			      (asdf:find-component (asdf:find-system :bodge-nuklear) :nuklear-lib))))
		      #+windows
		      (list "c:/msys64/mingw64/x86_64-w64-mingw32/include/"
			    "c:/msys64/mingw64/include/"
			    "c:/msys64/usr/local/include/"))
 :exclude-sources (".*.h")
 :include-sources ("nuklear.h")
 :include-definitions ("^(__)?(u|u_)?int.{0,2}(ptr)?(_t)?$")
 :no-accessors t
 :symbol-exceptions (("nk__begin" . #.(symbol-name 'command-list-begin))
		     ("nk__next" . #.(symbol-name 'command-list-next)))
 :symbol-regex (("nk_\\w*" () (lambda (name matches regex)
				(declare (ignore matches regex))
				(subseq name 3)))
		("NK.?_\\w*" () (lambda (name matches regex)
				  (declare (ignore matches regex))
				  (let ((pos (position #\_ name)))
				    (if (> pos 2)
					(subseq name 2)
					(subseq name 3)))))))
