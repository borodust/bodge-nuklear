(cl:in-package :nuklear)

(defvar *max-vertex-buffer-size* (* 512 1024))
(defvar *max-element-buffer-size* (* 128 1024))


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


(defun make-user-font (height width-callback &optional (user-data-ptr (cffi:null-pointer)))
  (c-let ((fnt (:struct (%nk:user-font)) :calloc t))
    (setf (fnt :userdata :ptr) user-data-ptr
          (fnt :width) (callback width-callback)
          (fnt :height) (float height 0f0))
    fnt))


(defun destroy-user-font (font)
  (free font))


(defun make-context (&optional font)
  (c-let ((ctx (:struct (%nk:context)) :calloc t))
    (%nk:init-default ctx font)
    ctx))


(defun destroy-context (ctx)
  (unwind-protect
       (%nk:free ctx)
    (free ctx)))


(defun command-type (cmd)
  (claw:enum-key '(:enum (%nk:command-type)) (c-ref cmd (:struct (%nk:command)) :type)))


(defmacro docommands ((cmd ctx) &body body)
  (once-only (ctx)
    `(loop for ,cmd = (%nk:command-list-begin ,ctx) then (%nk:command-list-next ,ctx ,cmd)
           until (cffi-sys:null-pointer-p (claw:ptr ,cmd))
           do (progn ,@body))))

;;;
;;; RENDERING
;;;
(defstruct nk-renderer
  handle)


(defun renderer-font (renderer)
  (%nk:bodge-renderer-font (nk-renderer-handle renderer)))


(defun make-renderer ()
  (make-nk-renderer :handle (%nk:bodge-renderer-create *max-vertex-buffer-size*
                                                       *max-element-buffer-size*)))


(defun destroy-renderer (renderer)
  (%nk:bodge-renderer-destroy (nk-renderer-handle renderer)))


(defun render-nuklear (renderer context width height &optional (pixel-ratio 1f0))
  (%nk:bodge-render context (nk-renderer-handle renderer)
                    (floor width) (floor height) (float pixel-ratio 0f0)))
