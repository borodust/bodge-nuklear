(in-package :bodge-nuklear)


(define-bitmask-from-enum (panel-flags (:enum (%nk:panel-flags))))


(defun panel-mask (&rest opts)
  (apply #'mask 'panel-flags opts))


(defmacro define-text-width-callback (name (handle font-height text) &body body)
  (with-gensyms (f-text len)
    `(defcallback ,name :float ((,handle :pointer)
                                (,font-height :float)
                                (,f-text :pointer)
                                (,len :int))
       (declare (ignorable ,handle ,font-height))
       (let ((,text (cffi:foreign-string-to-lisp ,f-text :count ,len)))
         (float (progn ,@body) 0f0)))))


(defun make-user-font (height width-callback)
  (c-let ((fnt (:struct (%nk:user-font)) :calloc t))
    (setf (fnt :width) (callback width-callback)
          (fnt :height) (float height 0f0))
    fnt))


(defun destroy-user-font (font)
  (free font))


(defun make-context (font)
  (c-let ((ctx (:struct (%nk:context)) :calloc t))
    (%nk:init-default ctx font)
    ctx))


(defun destroy-context (ctx)
  (unwind-protect
       (%nk:free ctx)
    (free ctx)))


(defmacro docommands ((cmd ctx) &body body)
  (once-only (ctx)
    `(loop for ,cmd = (%nk:command-list-begin ,ctx) then (%nk:command-list-next ,ctx ,cmd)
        until (cffi-sys:null-pointer-p (bodge-autowrap:ptr ,cmd)) do (progn ,@body))))
