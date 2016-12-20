(cl:in-package :bodge-nuklear)


(define-constant +local-include-path+
    #.(namestring (merge-pathnames "lib/nuklear/"
                                   (directory-namestring
                                    (or *compile-file-truename* *load-truename*))))
    :test #'equal)


(autowrap:c-include
 '(bodge-nuklear lib "bodge_nuklear.h")
 :spec-path '(bodge-nuklear spec)
 :definition-package :%nuklear
 :sysincludes (list +local-include-path+)
 :exclude-sources (".*.h")
 :include-sources ("nuklear.h")
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
