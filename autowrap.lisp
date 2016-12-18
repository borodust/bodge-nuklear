(cl:in-package :bodge-nuklear)


(autowrap:c-include
 '(bodge-nuklear lib "nuklear.h")
 :spec-path '(bodge-nuklear spec)
 :definition-package :%nuklear
 :exclude-sources (".*.h")
 :include-sources ("nuklear.h")
 :no-accessors t
 :symbol-regex (("nk_\\w*" () (lambda (name matches regex)
                                (declare (ignore matches regex))
                                (subseq name 3)))
                ("NK.?_\\w*" () (lambda (name matches regex)
                                  (declare (ignore matches regex))
                                  (let ((pos (position #\_ name)))
                                    (if (> pos 2)
                                        (subseq name 2)
                                        (subseq name 3)))))))
