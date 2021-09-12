(cl:defpackage :nuklear.example
  (:use :cl :cffi-c-ref)
  (:export run))
(cl:in-package :nuklear.example)


(defvar *window-width* 800)
(defvar *window-height* 600)
(defvar *default-output* *standard-output*)


(defclass nuklear-app (bodge-host:window)
  ((nk-context)
   (nk-renderer :initform nil)
   (level :initform :easy)
   (compression :initform (cffi:foreign-alloc :float :initial-element 0f0))
   (background-color :initform (c-let ((color (:struct %nuklear:colorf) :alloc t :clear t))
                                 (color &)))
   (rendering-thread)
   (enabled-p :initform nil)
   (exit-latch :initform nil))
  (:default-initargs
   :opengl-version '(3 3)
   :title "Nuklear Example"
   :width *window-width*
   :height *window-height*))


(defun compose-nuklear (app)
  (with-slots (nk-context level compression background-color) app
    (c-with ((rect (:struct %nuklear:rect)))
      (let ((val (%nuklear:begin nk-context "Demo" (%nuklear:rect (rect &) 50f0 50f0 230f0 250f0)
                            (nk:panel-mask :border :movable
                                           :scalable :minimizable
                                           :title)
                            #++(logior %nuklear:+window-border+ %nuklear:+window-movable+ %nuklear:+window-scalable+
                                       %nuklear:+window-minimizable+ %nuklear:+window-title+))))
        (unless (= val 0)
          (%nuklear:layout-row-static nk-context 30f0 80 1)
          (unless (= (%nuklear:button-label nk-context "button") 0)
            (format *default-output* "~&button pressed"))

          (%nuklear:layout-row-dynamic nk-context 30f0 2)
          (unless (= (%nuklear:option-label nk-context "easy" (if (eq level :easy) 1 0)) 0)
            (setf level :easy))
          (unless (= (%nuklear:option-label nk-context "eard" (if (eq level :hard) 1 0)) 0)
            (setf level :hard))

          (%nuklear:layout-row-dynamic nk-context 25f0 1)
          (%nuklear:property-float nk-context "Compression:" 0f0 compression 100f0 10f0 1f0)

          (%nuklear:layout-row-dynamic nk-context 20f0 1)
          (%nuklear:label nk-context "background:"
                     (cffi:foreign-enum-value '%nuklear:text-align :left))

          (%nuklear:layout-row-dynamic nk-context 25f0 1)
          (c-with ((color (:struct %nuklear:color))
                   (color-f (:struct %nuklear:colorf))
                   (size (:struct %nuklear:vec2)))
            (setf (size :x) (%nuklear:widget-width nk-context)
                  (size :y) 400f0)
            (unless (= (%nuklear:combo-begin-color nk-context (%nuklear:rgb-cf (color &)
                                                                     background-color)
                                              (size &))
                       0)
              (%nuklear:layout-row-dynamic nk-context 120f0 1)
              (%libc.es:memcpy background-color
                               (%nuklear:color-picker (color-f &)
                                                 nk-context background-color :rgba)
                               (cffi:foreign-type-size '(:struct %nuklear:colorf)))
              (%nuklear:layout-row-dynamic nk-context 24f0 1)
              (c-let ((bg (:struct %nuklear:colorf) :from background-color))
                (setf (bg :r) (%nuklear:propertyf nk-context "#R:" 0f0 (bg :r) 1f0 0.0f0 0.005f0)
                      (bg :g) (%nuklear:propertyf nk-context "#G:" 0f0 (bg :g) 1f0 0.0f0 0.005f0)
                      (bg :b) (%nuklear:propertyf nk-context "#B:" 0f0 (bg :b) 1f0 0.0f0 0.005f0)
                      (bg :a) (%nuklear:propertyf nk-context "#A:" 0f0 (bg :a) 1f0 0.0f0 0.005f0)))
              (%nuklear:combo-end nk-context)))))
      (%nuklear:end nk-context))))


(defun register-input (app)
  (with-slots (nk-context) app
    (%nuklear:input-begin nk-context)
    (let* ((cursor (bodge-host:cursor-position app))
           (cursor-x (floor (bodge-host:x cursor)))
           (cursor-y (- *window-height* (floor (bodge-host:y cursor)))))
      (%nuklear:input-button nk-context :left cursor-x cursor-y
                        (case (bodge-host:mouse-button-state app :left)
                          (:pressed %nuklear:+true+)
                          (:released %nuklear:+false+)))
      (%nuklear:input-motion nk-context cursor-x cursor-y))

    (%nuklear:input-end nk-context)))


(defun render (this)
  (with-slots (nk-context nk-renderer background-color) this
    (c-let ((color-v (:struct %nuklear:colorf) :from background-color))
      (gl:clear-color (color-v :r) (color-v :g) (color-v :b) 1f0))
    (gl:clear :color-buffer-bit)

      (register-input this)
      (compose-nuklear this)

      (let* ((window-size (bodge-host:viewport-size this))
             (width (bodge-host:x window-size))
             (height (bodge-host:y window-size)))
        (nk-renderer:render-nuklear nk-renderer nk-context width height))

    (%nuklear:clear nk-context)))


(defmethod bodge-host:on-init ((this nuklear-app))
  (with-slots (nk-context nk-renderer background-color enabled-p compression
               rendering-thread exit-latch)
      this
    (c-let ((color-v (:struct %nuklear:colorf) :from background-color))
      (setf enabled-p t
            exit-latch (mt:make-latch))
      (flet ((%render ()
               (bodge-host:bind-main-rendering-context this)
               (glad:init)
               (setf (bodge-host:swap-interval) 1
                     nk-context (nk:make-context)
                     nk-renderer (nk-renderer:make-renderer)
                     (color-v :r) 0.10f0
                     (color-v :g) 0.18f0
                     (color-v :b) 0.24f0
                     (color-v :a) 1f0)
               (%nuklear:style-set-font nk-context (nk-renderer:renderer-font nk-renderer))
               (unwind-protect
                    (loop while enabled-p
                          do (render this)
                             (bodge-host:swap-buffers this))
                 (unwind-protect
                      (progn
                        (nk-renderer:destroy-renderer nk-renderer)
                        (nk:destroy-context nk-context)
                        (cffi:foreign-free background-color)
                        (cffi:foreign-free compression))
                   (mt:open-latch exit-latch)))))
        (setf rendering-thread (bt:make-thread #'%render))))))


(defmethod bodge-host:on-destroy ((this nuklear-app))
  (with-slots (enabled-p exit-latch) this
    (setf enabled-p nil)
    (mt:wait-for-latch exit-latch)))


(defmethod bodge-host:on-hide ((this nuklear-app))
  (bodge-host:close-window this))


(defun run ()
  (bodge-host:open-window (make-instance 'nuklear-app)))
