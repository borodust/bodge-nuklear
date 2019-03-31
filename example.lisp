(cl:defpackage :nuklear.example
  (:use :cl)
  (:export run))
(cl:in-package :nuklear.example)


(defvar *window-width* 800)
(defvar *window-height* 600)
(defvar *default-output* *standard-output*)


(defclass nuklear-app (bodge-host:window)
  ((nk-context)
   (nk-renderer :initform nil)
   (level :initform :easy)
   (compression :initform (claw:calloc :float))
   (background-color :initform (claw:calloc '(:struct (%nk:colorf))))
   (rendering-thread)
   (enabled-p :initform nil)
   (exit-latch))
  (:default-initargs
   :opengl-version '(3 3)
   :title "Nuklear Example"
   :width *window-width*
   :height *window-height*))


(defun compose-nuklear (app)
  (with-slots (nk-context level compression background-color) app
    (claw:c-with ((rect (:struct (%nk:rect))))
      (let ((val (%nk:begin nk-context "Demo" (%nk:rect rect 50f0 50f0 230f0 250f0)
                            (logior %nk:+window-border+ %nk:+window-movable+ %nk:+window-scalable+
                                    %nk:+window-minimizable+ %nk:+window-title+))))
        (unless (= val 0)
          (%nk:layout-row-static nk-context 30f0 80 1)
          (unless (= (%nk:button-label nk-context "button") 0)
            (format *default-output* "~&button pressed"))

          (%nk:layout-row-dynamic nk-context 30f0 2)
          (unless (= (%nk:option-label nk-context "easy" (if (eq level :easy) 1 0)) 0)
            (setf level :easy))
          (unless (= (%nk:option-label nk-context "eard" (if (eq level :hard) 1 0)) 0)
            (setf level :hard))

          (%nk:layout-row-dynamic nk-context 25f0 1)
          (%nk:property-float nk-context "Compression:" 0f0 compression 100f0 10f0 1f0)

          (%nk:layout-row-dynamic nk-context 20f0 1)
          (%nk:label nk-context "background:" %nk:+text-left+)

          (%nk:layout-row-dynamic nk-context 25f0 1)
          (claw:c-with ((color (:struct (%nk:color)))
                        (color-f (:struct (%nk:colorf)))
                        (size (:struct (%nk:vec2))))
            (setf (size :x) (%nk:widget-width nk-context)
                  (size :y) 400f0)
            (unless (= (%nk:combo-begin-color nk-context (%nk:rgb-cf color background-color) size) 0)
              (%nk:layout-row-dynamic nk-context 120f0 1)
              (claw:memcpy background-color
                           (%nk:color-picker color-f nk-context background-color %nk:+rgba+)
                           1 '(:struct (%nk:colorf)))
              (%nk:layout-row-dynamic nk-context 24f0 1)
              (claw:c-let ((bg (:struct (%nk:colorf)) :from background-color))
                (setf (bg :r) (%nk:propertyf nk-context "#R:" 0f0 (bg :r) 1f0 0.0f0 0.005f0)
                      (bg :g) (%nk:propertyf nk-context "#G:" 0f0 (bg :g) 1f0 0.0f0 0.005f0)
                      (bg :b) (%nk:propertyf nk-context "#B:" 0f0 (bg :b) 1f0 0.0f0 0.005f0)
                      (bg :a) (%nk:propertyf nk-context "#A:" 0f0 (bg :a) 1f0 0.0f0 0.005f0)))
              (%nk:combo-end nk-context)))))
      (%nk:end nk-context))))


(defun register-input (app)
  (with-slots (nk-context) app
    (%nk:input-begin nk-context)
    (let* ((cursor (bodge-host:cursor-position app))
           (cursor-x (floor (bodge-host:x cursor)))
           (cursor-y (floor (bodge-host:y cursor))))
      (%nk:input-button nk-context %nk:+button-left+ cursor-x cursor-y
                        (case (bodge-host:mouse-button-state app :left)
                          (:pressed %nk:+true+)
                          (:released %nk:+false+)))
      (%nk:input-motion nk-context cursor-x cursor-y))

    (%nk:input-end nk-context)))


(defun render (this)
  (with-slots (nk-context nk-renderer background-color) this
    (claw:c-let ((color-v (:struct (%nk:colorf)) :from background-color))
      (gl:clear-color (color-v :r) (color-v :g) (color-v :b) 1f0))
    (gl:clear :color-buffer-bit)

      (register-input this)
      (compose-nuklear this)

      (let* ((window-size (bodge-host:viewport-size this))
             (width (bodge-host:x window-size))
             (height (bodge-host:y window-size)))
        (nk:render-nuklear nk-renderer nk-context width height))

    (%nk:clear nk-context)))


(defmethod bodge-host:on-init ((this nuklear-app))
  (with-slots (nk-context nk-renderer background-color enabled-p compression
               rendering-thread exit-latch)
      this
    (claw:c-let ((color-v (:struct (%nk:colorf)) :from background-color))
      (setf enabled-p t
            exit-latch (mt:make-latch))
      (flet ((%render ()
               (bodge-host:bind-main-rendering-context this)
               (glad:init)
               (setf (bodge-host:swap-interval) 1
                     nk-context (nk:make-context)
                     nk-renderer (nk:make-renderer)
                     (color-v :r) 0.10f0
                     (color-v :g) 0.18f0
                     (color-v :b) 0.24f0
                     (color-v :a) 1f0)
               (%nk:style-set-font nk-context (nk:renderer-font nk-renderer))
               (unwind-protect
                    (loop while enabled-p
                          do (render this)
                             (bodge-host:swap-buffers this))
                 (unwind-protect
                      (progn
                        (nk:destroy-renderer nk-renderer)
                        (nk:destroy-context nk-context)
                        (claw:free background-color)
                        (claw:free compression))
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
