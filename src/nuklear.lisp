(cl:in-package :nuklear)

(defvar *max-vertex-buffer-size* (* 512 1024))
(defvar *max-element-buffer-size* (* 128 1024))


(claw-utils:define-bitfield-from-enum panel-flags %nuklear:panel-flags)
(claw-utils:define-bitfield-from-enum window-flags %nuklear:window-flags)


(defmacro with-vec2 ((vec) &body body)
  `(c-with ((,vec (:struct (%nuklear:vec2)) :clear t))
     ,@body))


(defun panel-mask (&rest opts)
  (cffi:foreign-bitfield-value 'panel-flags opts))


(defun window-mask (&rest opts)
  (cffi:foreign-bitfield-value 'window-flags opts))


(defmacro define-text-width-callback (name (handle font-height text) &body body)
  (with-gensyms (f-text len)
    `(cffi:defcallback ,name :float ((,handle :pointer)
                                     (,font-height :float)
                                     (,f-text :pointer)
                                     (,len :int))
       (declare (ignorable ,handle ,font-height))
       (let ((,text (cffi:foreign-string-to-lisp ,f-text :count ,len)))
         (float (progn ,@body) 0f0)))))


(defun make-user-font (height width-callback
                       &optional (user-data-ptr (cffi:null-pointer)))
  (c-let ((fnt (:struct %nuklear:user-font) :alloc t :clear t))
    (setf (fnt :userdata :ptr) user-data-ptr
          (fnt :width) (cffi:get-callback width-callback)
          (fnt :height) (float height 0f0))
    (fnt &)))


(defun destroy-user-font (font)
  (cffi:foreign-free font))


(defun make-context (&optional font)
  (c-let ((ctx (:struct %nuklear:context) :alloc t :clear t))
    (%nuklear:init-default (ctx &) font)
    (ctx &)))


(defun destroy-context (ctx)
  (unwind-protect
       (%nuklear:free ctx)
    (cffi:foreign-free ctx)))


(defun command-type (cmd)
  (cffi:foreign-enum-keyword '%nuklear:command-type
                             (c-ref cmd (:struct %nuklear:command) :type)))


(defmacro docommands ((cmd ctx) &body body)
  (once-only (ctx)
    `(loop for ,cmd = (%nuklear:command-list-begin ,ctx) then (%nuklear:command-list-next ,ctx ,cmd)
           until (cffi-sys:null-pointer-p ,cmd)
           do (progn ,@body)
           finally (return (values)))))
