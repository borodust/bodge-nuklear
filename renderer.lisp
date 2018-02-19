(cl:defpackage :nuklear.renderer
  (:nicknames :nk.renderer)
  (:use :cl :alexandria)
  (:export #:make-renderer
           #:destroy-renderer
           #:render-nuklear))
(cl:in-package :nuklear.renderer)

(defvar *max-vertex-buffer-size* (* 512 1024))
(defvar *max-element-buffer-size* (* 128 1024))

;; https://github.com/vurtun/nuklear/blob/2891c6afbc5781b700cbad6f6d771f1f214f6b56/demo/glfw_opengl3/nuklear_glfw_gl3.h#L104-L116
(defparameter *vertex-shader-source*
  "#version 330
uniform mat4 ProjMtx;
in vec2 Position;
in vec2 TexCoord;
in vec4 Color;
out vec2 Frag_UV;
out vec4 Frag_Color;
void main() {
   Frag_UV = TexCoord;
   Frag_Color = Color;
   gl_Position = ProjMtx * vec4(Position.xy, 0, 1);
}")


;; https://github.com/vurtun/nuklear/blob/2891c6afbc5781b700cbad6f6d771f1f214f6b56/demo/glfw_opengl3/nuklear_glfw_gl3.h#L117-L126
(defparameter *fragment-shader-source*
  "#version 330
precision mediump float;
uniform sampler2D Texture;
in vec2 Frag_UV;
in vec4 Frag_Color;
out vec4 Out_Color;
void main(){
   Out_Color = Frag_Color * texture(Texture, Frag_UV.st);
}")


(defstruct nk-renderer
  command-queue
  vertex-buffer
  vertex-array
  element-array
  program
  vertex-shader
  fragment-shader
  texture-uniform
  projection-matrix-uniform
  projection-matrix
  null-texture
  font-atlas
  font-texture
  convert-config)


(defun make-shader (shader-type source)
  (let ((shader (gl:create-shader shader-type)))
    (gl:shader-source shader source)
    (gl:compile-shader shader)
    (unless (gl:get-shader shader :compile-status)
      (error "Failed to compile shader: ~A" (gl:get-shader-info-log shader)))
    shader))


(defun build-program (&rest shaders)
  (let ((program (gl:create-program)))
    (loop for shader in shaders
          do (gl:attach-shader program shader))
    (gl:link-program program)
    (unless (gl:get-program program :link-status)
      (error "Failed to link a program: ~A" (gl:get-program-info-log program)))
    program))


(defmacro with-program-bindings ((fu &rest bindings) program &body body)
  (alexandria:once-only (program)
    (let ((bindings (loop for (var name) in bindings
                          collect `(,var (,fu ,program ,name)))))
      `(let (,@bindings)
         ,@body))))


(defmacro with-bound-uniform-locations ((&rest bindings) program &body body)
  `(with-program-bindings (gl:get-uniform-location ,@bindings) ,program
     ,@body))


(defmacro with-bound-attribute-locations ((&rest bindings) program &body body)
  `(with-program-bindings (gl:get-attrib-location ,@bindings) ,program
     ,@body))


(defun init-shader-data (renderer)
  (let* ((vertex-shader (make-shader :vertex-shader *vertex-shader-source*))
         (fragment-shader (make-shader :fragment-shader *fragment-shader-source*))
         (program (build-program vertex-shader fragment-shader)))
    (setf (nk-renderer-program renderer) program
          (nk-renderer-vertex-shader renderer) vertex-shader
          (nk-renderer-fragment-shader renderer) fragment-shader)
    (with-bound-uniform-locations ((texture-uniform "Texture")
                                   (proj-uniform "ProjMtx"))
        program
      (setf (nk-renderer-texture-uniform renderer) texture-uniform
            (nk-renderer-projection-matrix-uniform renderer) proj-uniform))))


(defun enable-vertex-attribute (attribute-idx size type normalized-p stride offset)
  (gl:enable-vertex-attrib-array attribute-idx)
  (gl:vertex-attrib-pointer attribute-idx size type normalized-p
                            stride (cffi:make-pointer offset)))


(defun init-buffer-data (renderer program)
  (let ((vertex-array (gl:gen-vertex-array))
        (vertex-buffer (gl:gen-buffer))
        (element-buffer (gl:gen-buffer))

        (vertex-data-size (claw:sizeof '(:struct (%nk:bodge-vertex))))
        (vertex-position-data-offset (claw:offsetof '(:struct (%nk:bodge-vertex)) :position))
        (vertex-uv-data-offset (claw:offsetof '(:struct (%nk:bodge-vertex)) :uv))
        (vertex-color-data-offset (claw:offsetof '(:struct (%nk:bodge-vertex)) :col)))

    (gl:bind-vertex-array vertex-array)
    (gl:bind-buffer :array-buffer vertex-buffer)
    (gl:bind-buffer :element-array-buffer element-buffer)
    (with-bound-attribute-locations ((position-attribute "Position")
                                     (uv-attribute "TexCoord")
                                     (color-attribute "Color"))
        program
      (enable-vertex-attribute position-attribute 2 :float nil
                               vertex-data-size vertex-position-data-offset)
      (enable-vertex-attribute uv-attribute 2 :float nil
                               vertex-data-size vertex-uv-data-offset)
      (enable-vertex-attribute color-attribute 4 :unsigned-byte t
                               vertex-data-size vertex-color-data-offset))
    (setf (nk-renderer-vertex-array renderer) vertex-array
          (nk-renderer-vertex-buffer renderer) vertex-buffer
          (nk-renderer-element-array renderer) element-buffer))

  (gl:bind-vertex-array 0)
  (gl:bind-buffer :array-buffer 0)
  (gl:bind-buffer :element-array-buffer 0))


(defun init-command-queue (renderer)
  (setf (nk-renderer-command-queue renderer)
        (claw:c-let ((command-buffer (:struct (%nk:buffer)) :calloc t))
          (%nk:buffer-init-default command-buffer)
          command-buffer)))


(defun init-fonts (renderer context)
  (claw:c-let ((atlas (:struct (%nk:font-atlas)) :calloc t)
               (null-texture (:struct (%nk:draw-null-texture)) :calloc t))
    (%nk:font-atlas-init-default atlas)
    (%nk:font-atlas-begin atlas)
    (let ((font-texture (gl:gen-texture)))
      (gl:bind-texture :texture-2d font-texture)
      (gl:tex-parameter :texture-2d :texture-min-filter :linear)
      (gl:tex-parameter :texture-2d :texture-mag-filter :linear)
      (claw:c-with ((width :int)
                    (height :int))
        (let ((image-ptr (%nk:font-atlas-bake atlas (width &) (height &) %nk:+font-atlas-rgba32+)))
          (gl:tex-image-2d :texture-2d 0 :rgba width height 0 :rgba :unsigned-byte image-ptr :raw t)))
      (%nk:font-atlas-end atlas (%nk:handle-id font-texture) null-texture)
      (setf (nk-renderer-null-texture renderer) null-texture
            (nk-renderer-font-atlas renderer) atlas
            (nk-renderer-font-texture renderer) font-texture))
    (%nk:style-set-font context (atlas :default-font :handle)))
  (gl:bind-texture :texture-2d 0))


(defun init-projectection-matrix (renderer)
  (claw:c-let ((ortho :float :count 16 :calloc t))
    (setf (ortho 0) 2f0
          (ortho 1) 0f0
          (ortho 2) 0f0
          (ortho 3) 0f0

          (ortho 4) 0f0
          (ortho 5) -2f0
          (ortho 6) 0f0
          (ortho 7) 0f0

          (ortho 8) 0f0
          (ortho 9) 0f0
          (ortho 10) -1f0
          (ortho 11) 0f0

          (ortho 12) -1f0
          (ortho 13) 1f0
          (ortho 14) 0f0
          (ortho 15) 1f0
          (nk-renderer-projection-matrix renderer) (ortho &))))


(defmacro let-vertex-layout ((vertex-layout &rest configs) &body body)
  (let ((config-count (length configs)))
    `(claw:c-let ((,vertex-layout (:struct (%nk:draw-vertex-layout-element))
                                  :count ,(1+ config-count)
                                  :calloc t))
       ,@(loop for (attribute format offset) in configs
               for i from 0
               collect `(setf (,vertex-layout ,i :attribute) ,attribute
                              (,vertex-layout ,i :format) ,format
                              (,vertex-layout ,i :offset) ,offset))
       (setf (,vertex-layout ,config-count :attribute) %nk:+vertex-layout-end+)
       ,@body)))


(defun init-convert-config (renderer null-texture)
  (claw:c-let ((config (:struct (%nk:convert-config)) :calloc t))
    (setf (config :vertex-size) (claw:sizeof '(:struct (%nk:bodge-vertex)))
          (config :vertex-alignment) (claw:alignof '(:struct (%nk:bodge-vertex)))
          (config :circle-segment-count) 22
          (config :curve-segment-count) 22
          (config :arc-segment-count) 22
          (config :global-alpha) 1f0
          (config :shape-aa) %nk:+anti-aliasing-on+
          (config :line-aa) %nk:+anti-aliasing-on+)
    (claw:memcpy (config :null) null-texture :type '(:struct (%nk:draw-null-texture)))
    (let-vertex-layout (vertex-layout (%nk:+vertex-position+
                                       %nk:+format-float+
                                       (claw:offsetof '(:struct (%nk:bodge-vertex)) :position))
                                      (%nk:+vertex-texcoord+
                                       %nk:+format-float+
                                       (claw:offsetof '(:struct (%nk:bodge-vertex)) :uv))
                                      (%nk:+vertex-color+
                                       %nk:+format-r8g8b8a8+
                                       (claw:offsetof '(:struct (%nk:bodge-vertex)) :col)))
      (setf (config :vertex-layout) vertex-layout
            (nk-renderer-convert-config renderer) config))))


(defun destroy-convert-config (config)
  (when config
    (claw:c-val ((config (:struct (%nk:convert-config))))
      (claw:free (config :vertex-layout))
      (claw:free config))))


(defun make-renderer (context)
  (let ((renderer (make-nk-renderer)))
    (init-shader-data renderer)
    (init-buffer-data renderer (nk-renderer-program renderer))
    (init-command-queue renderer)
    (init-fonts renderer context)
    (init-projectection-matrix renderer)
    (init-convert-config renderer (nk-renderer-null-texture renderer))
    renderer))


(defun destroy-renderer (renderer)
  (when-let ((program (nk-renderer-program renderer)))
    (when-let ((vert-shader (nk-renderer-vertex-shader renderer)))
      (gl:detach-shader program vert-shader)
      (gl:delete-shader vert-shader))
    (when-let ((frag-shader (nk-renderer-fragment-shader renderer)))
      (gl:detach-shader program frag-shader)
      (gl:delete-shader frag-shader))
    (gl:delete-program program))

  (when-let ((tex (nk-renderer-font-texture renderer)))
    (gl:delete-texture tex))

  (gl:delete-buffers (append (when-let ((vbo (nk-renderer-vertex-buffer renderer)))
                               (list vbo))
                             (when-let ((ebo (nk-renderer-element-array renderer)))
                               (list ebo))))
  (when-let ((vao (nk-renderer-vertex-array renderer)))
    (gl:delete-vertex-arrays (list vao)))

  (when-let ((queue (nk-renderer-command-queue renderer)))
    (%nk:buffer-free queue))

  (when-let ((atlas (nk-renderer-font-atlas renderer)))
    (%nk:font-atlas-clear atlas)
    (claw:free atlas))

  (when-let ((matrix (nk-renderer-projection-matrix renderer)))
    (claw:free matrix))

  (when-let ((null-texture (nk-renderer-null-texture renderer)))
    (claw:free null-texture))

  (destroy-convert-config (nk-renderer-convert-config renderer)))


(defun update-ortho-projection (renderer width height)
  (claw:c-let ((ortho :float :ptr (nk-renderer-projection-matrix renderer)))
    (setf (ortho 0) (float (/ 2f0 width) 0f0)
          (ortho 5) (float (/ -2f0 height) 0f0))))


(defun setup-opengl-state (renderer width height pixel-ratio)
  (gl:enable :blend
             :scissor-test)
  (gl:disable :cull-face
              :depth-test)

  (gl:blend-equation :func-add)
  (gl:blend-func :src-alpha :one-minus-src-alpha)

  (gl:active-texture :texture0)

  (gl:use-program (nk-renderer-program renderer))
  (gl:uniformi (nk-renderer-texture-uniform renderer) 0)
  (%gl:uniform-matrix-4fv (nk-renderer-projection-matrix-uniform renderer) 1 nil
                          (nk-renderer-projection-matrix renderer))
  (gl:viewport 0 0 (floor (* width pixel-ratio)) (floor (* height pixel-ratio)))

  (gl:bind-vertex-array (nk-renderer-vertex-array renderer))
  (gl:bind-buffer :array-buffer (nk-renderer-vertex-buffer renderer))
  (%gl:buffer-data :array-buffer *max-vertex-buffer-size* (cffi:null-pointer) :stream-draw)

  (gl:bind-buffer :element-array-buffer (nk-renderer-element-array renderer))
  (%gl:buffer-data :element-array-buffer *max-element-buffer-size* (cffi:null-pointer) :stream-draw))


(defun convert-draw-queue (renderer context)
  (let ((vertices (gl:map-buffer :array-buffer :write-only))
        (elements (gl:map-buffer :element-array-buffer :write-only)))
    (claw:c-with ((vbuf (:struct (%nk:buffer)) :calloc t)
                  (ebuf (:struct (%nk:buffer)) :calloc t))
      (%nk:buffer-init-fixed vbuf vertices *max-vertex-buffer-size*)
      (%nk:buffer-init-fixed ebuf elements *max-element-buffer-size*)

      (let ((result-code (%nk:convert context
                                      (nk-renderer-command-queue renderer)
                                      vbuf ebuf
                                      (nk-renderer-convert-config renderer))))
        (unless (= result-code %nk:+convert-success+)
          (error "Failed to convert command list into OpenGL draw queue. Error code: ~A"
                 result-code)))

      (gl:unmap-buffer :array-buffer)
      (gl:unmap-buffer :element-array-buffer))))


(defmacro do-draw-queue ((cmd ctx queue) &body body)
  (once-only (ctx queue)
    `(loop for ,cmd = (%nk:draw-list-begin ,ctx ,queue)
             then (%nk:draw-list-next ,ctx ,cmd ,queue)
           until (cffi-sys:null-pointer-p (claw:ptr ,cmd))
           do (claw:c-val ((,cmd (:struct (%nk:draw-command))))
                ,@body))))


(defun draw-queue (renderer context height pixel-ratio)
  (let ((offset (cffi:make-pointer 0))
        (queue (nk-renderer-command-queue renderer)))
    (do-draw-queue (cmd context queue)
      (when (> (cmd :elem-count) 0)
        (gl:bind-texture :texture-2d (cmd :texture :id))
        (gl:scissor (* (cmd :clip-rect :x) pixel-ratio)
                    (* (- height (+ (cmd :clip-rect :y) (cmd :clip-rect :h))) pixel-ratio)
                    (* (cmd :clip-rect :w) pixel-ratio)
                    (* (cmd :clip-rect :h) pixel-ratio))
        (%gl:draw-elements :triangles (cmd :elem-count) :unsigned-short offset)
        (cffi:incf-pointer offset (cmd :elem-count))))))


(defun reset-opengl-state ()
  (gl:use-program 0)
  (gl:bind-buffer :array-buffer 0)
  (gl:bind-buffer :element-array-buffer 0)
  (gl:bind-vertex-array 0)
  (gl:disable :blend)
  (gl:disable :scissor-test))


(defun render-nuklear (renderer context width height &optional (pixel-ratio 1f0))
  (update-ortho-projection renderer width height)
  (setup-opengl-state renderer width height pixel-ratio)
  (convert-draw-queue renderer context)
  (draw-queue renderer context height pixel-ratio)
  (reset-opengl-state))
