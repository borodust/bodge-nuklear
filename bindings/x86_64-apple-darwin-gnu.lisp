(uiop:define-package :%nuklear (:use))
(uiop:define-package :bodge-nuklear-bindings~pristine (:use :cl))
(common-lisp:in-package :bodge-nuklear-bindings~pristine)

(defparameter %nuklear::+api+ nil)

(defparameter %nuklear::+button-behavior-stack-size+ 8)

(defparameter %nuklear::+button-trigger-on-release+ nil)

(defparameter %nuklear::+chart-max-slot+ 4)

(defparameter %nuklear::+color-stack-size+ 32)

(defparameter %nuklear::+flags-stack-size+ 32)

(defparameter %nuklear::+float-stack-size+ 32)

(defparameter %nuklear::+font-stack-size+ 8)

(defparameter %nuklear::+global+ nil)

(defparameter %nuklear::+include-default-allocator+ nil)

(defparameter %nuklear::+include-default-font+ nil)

(defparameter %nuklear::+include-fixed-types+ nil)

(defparameter %nuklear::+include-font-baking+ nil)

(defparameter %nuklear::+include-standard-io+ nil)

(defparameter %nuklear::+include-vertex-buffer-output+ nil)

(defparameter %nuklear::+input-max+ 16)

(defparameter %nuklear::+int16+ nil)

(defparameter %nuklear::+int32+ nil)

(defparameter %nuklear::+int8+ nil)

(defparameter %nuklear::+intern+ nil)

(defparameter %nuklear::+lib+ nil)

(defparameter %nuklear::+max-float-precision+ 2)

(defparameter %nuklear::+max-layout-row-template-columns+ 16)

(defparameter %nuklear::+max-number-buffer+ 64)

(defparameter %nuklear::+nuklear-h-+ nil)

(defparameter %nuklear::+pi+ 3.1415927410125732D0)

(defparameter %nuklear::+pointer-type+ nil)

(defparameter %nuklear::+scrollbar-hiding-timeout+ 4.0D0)

(defparameter %nuklear::+single-file+ nil)

(defparameter %nuklear::+size-type+ nil)

(defparameter %nuklear::+storage+ nil)

(defparameter %nuklear::+style-item-stack-size+ 16)

(defparameter %nuklear::+textedit-undocharcount+ 999)

(defparameter %nuklear::+textedit-undostatecount+ 99)

(defparameter %nuklear::+uint16+ nil)

(defparameter %nuklear::+uint32+ nil)

(defparameter %nuklear::+uint8+ nil)

(defparameter %nuklear::+undefined+ -1.0D0)

(defparameter %nuklear::+utf-invalid+ 65533)

(defparameter %nuklear::+utf-size+ 4)

(defparameter %nuklear::+value-page-capacity+ 59)

(defparameter %nuklear::+vector-stack-size+ 16)

(defparameter %nuklear::+vertex-layout-end+ 3)

(defparameter %nuklear::+window-max-name+ 64)

(defparameter %nuklear::+float+ nil)

(cffi:defcenum (%nuklear::allocation-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4101:6"
               (:fixed 0)
               (:dynamic 1))

(cffi:defcenum (%nuklear::anti-aliasing :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:1142:6"
               (:off 0)
               (:on 1))

(cffi:defcenum (%nuklear::buffer-allocation-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4106:6"
               (:front 0)
               (:back 1)
               (:max 2))

(cffi:defcenum (%nuklear::button-behavior :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:470:6"
               (:default 0)
               (:repeater 1))

(cffi:defcenum (%nuklear::buttons :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:770:6"
               (:left 0)
               (:middle 1)
               (:right 2)
               (:double 3)
               (:max 4))

(cffi:defbitfield (%nuklear::chart-event :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:476:6"
                  (:hovering 1)
                  (:clicked 2))

(cffi:defcenum (%nuklear::chart-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:475:6"
               (:lines 0)
               (:column 1)
               (:max 2))

(cffi:defcenum (%nuklear::collapse-states :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:473:6"
               (:minimized 0)
               (:maximized 1))

(cffi:defcenum (%nuklear::color-format :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:477:6"
               (:rgb 0)
               (:rgba 1))

(cffi:defcenum (%nuklear::command-clipping :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4557:6"
               (:off 0)
               (:on 1))

(cffi:defcenum (%nuklear::command-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4374:6"
               (:nop 0)
               (:scissor 1)
               (:line 2)
               (:curve 3)
               (:rect 4)
               (:rect-filled 5)
               (:rect-multi-color 6)
               (:circle 7)
               (:circle-filled 8)
               (:arc 9)
               (:arc-filled 10)
               (:triangle 11)
               (:triangle-filled 12)
               (:polygon 13)
               (:polygon-filled 14)
               (:polyline 15)
               (:text 16)
               (:image 17)
               (:custom 18))

(cffi:defcenum (%nuklear::convert-result :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:1143:6"
               (:success 0)
               (:invalid-param 1)
               (:command-buffer-full 2)
               (:vertex-buffer-full 4)
               (:element-buffer-full 8))

(cffi:defcenum (%nuklear::draw-list-stroke :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4670:6"
               (:open 0)
               (:closed 1))

(cffi:defcenum (%nuklear::draw-vertex-layout-attribute :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4677:6"
               (:position 0)
               (:color 1)
               (:texcoord 2)
               (:attribute-count 3))

(cffi:defcenum (%nuklear::draw-vertex-layout-format :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4684:6"
               (:schar 0)
               (:sshort 1)
               (:sint 2)
               (:uchar 3)
               (:ushort 4)
               (:uint 5)
               (:float 6)
               (:double 7)
               (:color-begin 8)
               (:r8g8b8 8)
               (:r16g15b16 9)
               (:r32g32b32 10)
               (:r8g8b8a8 11)
               (:b8g8r8a8 12)
               (:r16g15b16a16 13)
               (:r32g32b32a32 14)
               (:r32g32b32a32-float 15)
               (:r32g32b32a32-double 16)
               (:rgb32 17)
               (:rgba32 18)
               (:color-end 18)
               (:count 19))

(cffi:defbitfield (%nuklear::edit-events :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3436:6"
                  (:active 1)
                  (:inactive 2)
                  (:activated 4)
                  (:deactivated 8)
                  (:commited 16))

(cffi:defcenum (%nuklear::edit-flags :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3415:6"
               (:default 0)
               (:read-only 1)
               (:auto-select 2)
               (:sig-enter 4)
               (:allow-tab 8)
               (:no-cursor 16)
               (:selectable 32)
               (:clipboard 64)
               (:ctrl-enter-newline 128)
               (:no-horizontal-scroll 256)
               (:always-insert-mode 512)
               (:multiline 1024)
               (:goto-end-on-activate 2048))

(cffi:defcenum (%nuklear::edit-types :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3430:6"
               (:simple 512)
               (:field 608)
               (:box 1640)
               (:editor 1128))

(cffi:defcenum (%nuklear::font-atlas-format :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4004:6"
               (:alpha8 0)
               (:rgba32 1))

(cffi:defcenum (%nuklear::font-coord-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3930:6"
               (:uv 0)
               (:pixel 1))

(cffi:defcenum (%nuklear::heading :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:469:6"
               (:up 0)
               (:right 1)
               (:down 2)
               (:left 3))

(cffi:defcenum (%nuklear::keys :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:735:6"
               (:none 0)
               (:shift 1)
               (:ctrl 2)
               (:del 3)
               (:enter 4)
               (:tab 5)
               (:backspace 6)
               (:copy 7)
               (:cut 8)
               (:paste 9)
               (:up 10)
               (:down 11)
               (:left 12)
               (:right 13)
               (:text-insert-mode 14)
               (:text-replace-mode 15)
               (:text-reset-mode 16)
               (:text-line-start 17)
               (:text-line-end 18)
               (:text-start 19)
               (:text-end 20)
               (:text-undo 21)
               (:text-redo 22)
               (:text-select-all 23)
               (:text-word-left 24)
               (:text-word-right 25)
               (:scroll-start 26)
               (:scroll-end 27)
               (:scroll-down 28)
               (:scroll-up 29)
               (:max 30))

(cffi:defcenum (%nuklear::layout-format :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:479:6"
               (:dynamic 0)
               (:static 1))

(cffi:defcenum (%nuklear::modify :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:471:6"
               (:fixed 0)
               (:modifiable 1))

(cffi:defcenum (%nuklear::orientation :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:472:6"
               (:vertical 0)
               (:horizontal 1))

(cffi:defbitfield (%nuklear::panel-flags :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:1450:6"
                  (:border 1)
                  (:movable 2)
                  (:scalable 4)
                  (:closable 8)
                  (:minimizable 16)
                  (:no-scrollbar 32)
                  (:title 64)
                  (:scroll-auto-hide 128)
                  (:background 256)
                  (:scale-left 512)
                  (:no-input 1024))

(cffi:defcenum (%nuklear::panel-row-layout-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:5284:6"
               (:dynamic-fixed 0)
               (:dynamic-row 1)
               (:dynamic-free 2)
               (:dynamic 3)
               (:static-fixed 4)
               (:static-row 5)
               (:static-free 6)
               (:static 7)
               (:template 8)
               (:count 9))

(cffi:defcenum (%nuklear::panel-set :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:5262:6"
               (:nonblock 240)
               (:popup 244)
               (:sub 246))

(cffi:defcenum (%nuklear::panel-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:5252:6"
               (:none 0)
               (:window 1)
               (:group 2)
               (:popup 4)
               (:contextual 16)
               (:combo 32)
               (:menu 64)
               (:tooltip 128))

(cffi:defcenum (%nuklear::popup-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:478:6"
               (:static 0)
               (:dynamic 1))

(cffi:defcenum (%nuklear::show-states :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:474:6"
               (:hidden 0)
               (:shown 1))

(cffi:defcenum (%nuklear::style-colors :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3561:6"
               (:text 0)
               (:window 1)
               (:header 2)
               (:border 3)
               (:button 4)
               (:button-hover 5)
               (:button-active 6)
               (:toggle 7)
               (:toggle-hover 8)
               (:toggle-cursor 9)
               (:select 10)
               (:select-active 11)
               (:slider 12)
               (:slider-cursor 13)
               (:slider-cursor-hover 14)
               (:slider-cursor-active 15)
               (:property 16)
               (:edit 17)
               (:edit-cursor 18)
               (:combo 19)
               (:chart 20)
               (:chart-color 21)
               (:chart-color-highlight 22)
               (:scrollbar 23)
               (:scrollbar-cursor 24)
               (:scrollbar-cursor-hover 25)
               (:scrollbar-cursor-active 26)
               (:tab-header 27)
               (:count 28))

(cffi:defcenum (%nuklear::style-cursor :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3592:6"
               (:arrow 0)
               (:text 1)
               (:move 2)
               (:resize-vertical 3)
               (:resize-horizontal 4)
               (:resize-top-left-down-right 5)
               (:resize-top-right-down-left 6)
               (:count 7))

(cffi:defcenum (%nuklear::style-header-align :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:5146:6"
               (:left 0)
               (:right 1))

(cffi:defcenum (%nuklear::style-item-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4805:6"
               (:color 0)
               (:image 1))

(cffi:defcenum (%nuklear::symbol-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:493:6"
               (:none 0)
               (:x 1)
               (:underscore 2)
               (:circle-solid 3)
               (:circle-outline 4)
               (:rect-solid 5)
               (:rect-outline 6)
               (:triangle-up 7)
               (:triangle-down 8)
               (:triangle-left 9)
               (:triangle-right 10)
               (:plus 11)
               (:minus 12)
               (:max 13))

(cffi:defbitfield (%nuklear::text-align :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3072:6"
                  (:left 1)
                  (:centered 2)
                  (:right 4)
                  (:top 8)
                  (:middle 16)
                  (:bottom 32))

(cffi:defcenum (%nuklear::text-alignment :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3080:6"
               (:left 17)
               (:centered 18)
               (:right 20))

(cffi:defcenum (%nuklear::text-edit-mode :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4274:6"
               (:view 0)
               (:insert 1)
               (:replace 2))

(cffi:defcenum (%nuklear::text-edit-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:4269:6"
               (:single-line 0)
               (:multi-line 1))

(cffi:defcenum (%nuklear::tree-type :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:480:6"
               (:node 0)
               (:tab 1))

(cffi:defcenum (%nuklear::widget-layout-states :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3041:6"
               (:invalid 0)
               (:valid 1)
               (:rom 2))

(cffi:defcenum (%nuklear::widget-states :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:3046:6"
               (:modified 2)
               (:inactive 4)
               (:entered 8)
               (:hover 16)
               (:actived 32)
               (:left 64)
               (:hovered 18)
               (:active 34))

(cffi:defcenum (%nuklear::window-flags :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nuklear/src/lib/nuklear/nuklear.h:5352:6"
               (:private 2048)
               (:dynamic 2048)
               (:rom 4096)
               (:not-interactive 5120)
               (:hidden 8192)
               (:closed 16384)
               (:minimized 32768)
               (:remove-rom 65536))

(defparameter %nuklear::+false+ 0)

(defparameter %nuklear::+true+ 1)

(cffi:defctype %nuklear::size :unsigned-long)

(cffi:defcstruct (%nuklear::command :size 16)
                 (%nuklear::type %nuklear::command-type :offset 0)
                 (%nuklear::next %nuklear::size :offset 8))

(cffi:defcstruct (%nuklear::key :size 8)
                 (%nuklear::down :int :offset 0)
                 (%nuklear::clicked :unsigned-int :offset 4))

(cffi:defcstruct (%nuklear::keyboard :size 260)
                 (%nuklear::keys (:struct %nuklear::key) :count 30
                  :offset 0)
                 (%nuklear::text :char :count 16 :offset 240)
                 (%nuklear::text-len :int :offset 256))

(cffi:defcstruct (%nuklear::vec2 :size 8)
                 (%nuklear::x :float :offset 0)
                 (%nuklear::y :float :offset 4))

(cffi:defcstruct (%nuklear::mouse-button :size 16)
                 (%nuklear::down :int :offset 0)
                 (%nuklear::clicked :unsigned-int :offset 4)
                 (%nuklear::clicked-pos (:struct %nuklear::vec2)
                  :offset 8))

(cffi:defcstruct (%nuklear::mouse :size 100)
                 (%nuklear::buttons (:struct %nuklear::mouse-button)
                  :count 4 :offset 0)
                 (%nuklear::pos (:struct %nuklear::vec2) :offset 64)
                 (%nuklear::prev (:struct %nuklear::vec2) :offset 72)
                 (%nuklear::delta (:struct %nuklear::vec2) :offset
                  80)
                 (%nuklear::scroll-delta (:struct %nuklear::vec2)
                  :offset 88)
                 (%nuklear::grab :unsigned-char :offset 96)
                 (%nuklear::grabbed :unsigned-char :offset 97)
                 (%nuklear::ungrab :unsigned-char :offset 98))

(cffi:defcstruct (%nuklear::input :size 360)
                 (%nuklear::keyboard (:struct %nuklear::keyboard)
                  :offset 0)
                 (%nuklear::mouse (:struct %nuklear::mouse) :offset
                  260))

(cffi:defctype %nuklear::text-width-f (claw-utils:claw-pointer :void))

(cffi:defctype %nuklear::query-font-glyph-f
               (claw-utils:claw-pointer :void))

(cffi:defcunion (%nuklear::|C:@UA@NK-HANDLE| :size 8)
                (%nuklear::ptr (claw-utils:claw-pointer :void))
                (%nuklear::id :int))

(cffi:defctype %nuklear::handle (:union %nuklear::|C:@UA@NK-HANDLE|))

(cffi:defcstruct (%nuklear::user-font :size 40)
                 (%nuklear::userdata %nuklear::handle :offset 0)
                 (%nuklear::height :float :offset 8)
                 (%nuklear::width %nuklear::text-width-f :offset 16)
                 (%nuklear::query %nuklear::query-font-glyph-f
                  :offset 24)
                 (%nuklear::texture %nuklear::handle :offset 32))

(cffi:defcstruct (%nuklear::image :size 24)
                 (%nuklear::handle %nuklear::handle :offset 0)
                 (%nuklear::w :unsigned-short :offset 8)
                 (%nuklear::h :unsigned-short :offset 10)
                 (%nuklear::region :unsigned-short :count 4 :offset
                  12))

(cffi:defcstruct (%nuklear::cursor :size 40)
                 (%nuklear::img (:struct %nuklear::image) :offset 0)
                 (%nuklear::size (:struct %nuklear::vec2) :offset 24)
                 (%nuklear::offset (:struct %nuklear::vec2) :offset
                  32))

(cffi:defctype %nuklear::byte :unsigned-char)

(cffi:defcstruct (%nuklear::color :size 4)
                 (%nuklear::r %nuklear::byte :offset 0)
                 (%nuklear::g %nuklear::byte :offset 1)
                 (%nuklear::b %nuklear::byte :offset 2)
                 (%nuklear::a %nuklear::byte :offset 3))

(cffi:defcstruct (%nuklear::style-text :size 12)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  0)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  4))

(cffi:defcunion (%nuklear::style-item-data :size 24)
                (%nuklear::image (:struct %nuklear::image))
                (%nuklear::color (:struct %nuklear::color)))

(cffi:defcstruct (%nuklear::style-item :size 32)
                 (%nuklear::type %nuklear::style-item-type :offset 0)
                 (%nuklear::data (:union %nuklear::style-item-data)
                  :offset 8))

(cffi:defctype %nuklear::flags :unsigned-int)

(cffi:defcstruct (%nuklear::style-button :size 176)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::text-background (:struct %nuklear::color)
                  :offset 100)
                 (%nuklear::text-normal (:struct %nuklear::color)
                  :offset 104)
                 (%nuklear::text-hover (:struct %nuklear::color)
                  :offset 108)
                 (%nuklear::text-active (:struct %nuklear::color)
                  :offset 112)
                 (%nuklear::text-alignment %nuklear::flags :offset
                  116)
                 (%nuklear::border :float :offset 120)
                 (%nuklear::rounding :float :offset 124)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  128)
                 (%nuklear::image-padding (:struct %nuklear::vec2)
                  :offset 136)
                 (%nuklear::touch-padding (:struct %nuklear::vec2)
                  :offset 144)
                 (%nuklear::userdata %nuklear::handle :offset 152)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 160)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 168))

(cffi:defcstruct (%nuklear::style-toggle :size 240)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::cursor-normal
                  (:struct %nuklear::style-item) :offset 104)
                 (%nuklear::cursor-hover
                  (:struct %nuklear::style-item) :offset 136)
                 (%nuklear::text-normal (:struct %nuklear::color)
                  :offset 168)
                 (%nuklear::text-hover (:struct %nuklear::color)
                  :offset 172)
                 (%nuklear::text-active (:struct %nuklear::color)
                  :offset 176)
                 (%nuklear::text-background (:struct %nuklear::color)
                  :offset 180)
                 (%nuklear::text-alignment %nuklear::flags :offset
                  184)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  188)
                 (%nuklear::touch-padding (:struct %nuklear::vec2)
                  :offset 196)
                 (%nuklear::spacing :float :offset 204)
                 (%nuklear::border :float :offset 208)
                 (%nuklear::userdata %nuklear::handle :offset 216)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 224)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 232))

(cffi:defcstruct (%nuklear::style-selectable :size 280)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::pressed (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::normal-active
                  (:struct %nuklear::style-item) :offset 96)
                 (%nuklear::hover-active
                  (:struct %nuklear::style-item) :offset 128)
                 (%nuklear::pressed-active
                  (:struct %nuklear::style-item) :offset 160)
                 (%nuklear::text-normal (:struct %nuklear::color)
                  :offset 192)
                 (%nuklear::text-hover (:struct %nuklear::color)
                  :offset 196)
                 (%nuklear::text-pressed (:struct %nuklear::color)
                  :offset 200)
                 (%nuklear::text-normal-active
                  (:struct %nuklear::color) :offset 204)
                 (%nuklear::text-hover-active
                  (:struct %nuklear::color) :offset 208)
                 (%nuklear::text-pressed-active
                  (:struct %nuklear::color) :offset 212)
                 (%nuklear::text-background (:struct %nuklear::color)
                  :offset 216)
                 (%nuklear::text-alignment %nuklear::flags :offset
                  220)
                 (%nuklear::rounding :float :offset 224)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  228)
                 (%nuklear::touch-padding (:struct %nuklear::vec2)
                  :offset 236)
                 (%nuklear::image-padding (:struct %nuklear::vec2)
                  :offset 244)
                 (%nuklear::userdata %nuklear::handle :offset 256)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 264)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 272))

(cffi:defcstruct (%nuklear::style-slider :size 640)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::bar-normal (:struct %nuklear::color)
                  :offset 100)
                 (%nuklear::bar-hover (:struct %nuklear::color)
                  :offset 104)
                 (%nuklear::bar-active (:struct %nuklear::color)
                  :offset 108)
                 (%nuklear::bar-filled (:struct %nuklear::color)
                  :offset 112)
                 (%nuklear::cursor-normal
                  (:struct %nuklear::style-item) :offset 120)
                 (%nuklear::cursor-hover
                  (:struct %nuklear::style-item) :offset 152)
                 (%nuklear::cursor-active
                  (:struct %nuklear::style-item) :offset 184)
                 (%nuklear::border :float :offset 216)
                 (%nuklear::rounding :float :offset 220)
                 (%nuklear::bar-height :float :offset 224)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  228)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  236)
                 (%nuklear::cursor-size (:struct %nuklear::vec2)
                  :offset 244)
                 (%nuklear::show-buttons :int :offset 252)
                 (%nuklear::inc-button
                  (:struct %nuklear::style-button) :offset 256)
                 (%nuklear::dec-button
                  (:struct %nuklear::style-button) :offset 432)
                 (%nuklear::inc-symbol %nuklear::symbol-type :offset
                  608)
                 (%nuklear::dec-symbol %nuklear::symbol-type :offset
                  612)
                 (%nuklear::userdata %nuklear::handle :offset 616)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 624)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 632))

(cffi:defcstruct (%nuklear::style-progress :size 256)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::cursor-normal
                  (:struct %nuklear::style-item) :offset 104)
                 (%nuklear::cursor-hover
                  (:struct %nuklear::style-item) :offset 136)
                 (%nuklear::cursor-active
                  (:struct %nuklear::style-item) :offset 168)
                 (%nuklear::cursor-border-color
                  (:struct %nuklear::color) :offset 200)
                 (%nuklear::rounding :float :offset 204)
                 (%nuklear::border :float :offset 208)
                 (%nuklear::cursor-border :float :offset 212)
                 (%nuklear::cursor-rounding :float :offset 216)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  220)
                 (%nuklear::userdata %nuklear::handle :offset 232)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 240)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 248))

(cffi:defcstruct (%nuklear::style-scrollbar :size 616)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::cursor-normal
                  (:struct %nuklear::style-item) :offset 104)
                 (%nuklear::cursor-hover
                  (:struct %nuklear::style-item) :offset 136)
                 (%nuklear::cursor-active
                  (:struct %nuklear::style-item) :offset 168)
                 (%nuklear::cursor-border-color
                  (:struct %nuklear::color) :offset 200)
                 (%nuklear::border :float :offset 204)
                 (%nuklear::rounding :float :offset 208)
                 (%nuklear::border-cursor :float :offset 212)
                 (%nuklear::rounding-cursor :float :offset 216)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  220)
                 (%nuklear::show-buttons :int :offset 228)
                 (%nuklear::inc-button
                  (:struct %nuklear::style-button) :offset 232)
                 (%nuklear::dec-button
                  (:struct %nuklear::style-button) :offset 408)
                 (%nuklear::inc-symbol %nuklear::symbol-type :offset
                  584)
                 (%nuklear::dec-symbol %nuklear::symbol-type :offset
                  588)
                 (%nuklear::userdata %nuklear::handle :offset 592)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 600)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 608))

(cffi:defcstruct (%nuklear::style-edit :size 800)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::scrollbar
                  (:struct %nuklear::style-scrollbar) :offset 104)
                 (%nuklear::cursor-normal (:struct %nuklear::color)
                  :offset 720)
                 (%nuklear::cursor-hover (:struct %nuklear::color)
                  :offset 724)
                 (%nuklear::cursor-text-normal
                  (:struct %nuklear::color) :offset 728)
                 (%nuklear::cursor-text-hover
                  (:struct %nuklear::color) :offset 732)
                 (%nuklear::text-normal (:struct %nuklear::color)
                  :offset 736)
                 (%nuklear::text-hover (:struct %nuklear::color)
                  :offset 740)
                 (%nuklear::text-active (:struct %nuklear::color)
                  :offset 744)
                 (%nuklear::selected-normal (:struct %nuklear::color)
                  :offset 748)
                 (%nuklear::selected-hover (:struct %nuklear::color)
                  :offset 752)
                 (%nuklear::selected-text-normal
                  (:struct %nuklear::color) :offset 756)
                 (%nuklear::selected-text-hover
                  (:struct %nuklear::color) :offset 760)
                 (%nuklear::border :float :offset 764)
                 (%nuklear::rounding :float :offset 768)
                 (%nuklear::cursor-size :float :offset 772)
                 (%nuklear::scrollbar-size (:struct %nuklear::vec2)
                  :offset 776)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  784)
                 (%nuklear::row-padding :float :offset 792))

(cffi:defcstruct (%nuklear::style-property :size 1312)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::label-normal (:struct %nuklear::color)
                  :offset 100)
                 (%nuklear::label-hover (:struct %nuklear::color)
                  :offset 104)
                 (%nuklear::label-active (:struct %nuklear::color)
                  :offset 108)
                 (%nuklear::sym-left %nuklear::symbol-type :offset
                  112)
                 (%nuklear::sym-right %nuklear::symbol-type :offset
                  116)
                 (%nuklear::border :float :offset 120)
                 (%nuklear::rounding :float :offset 124)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  128)
                 (%nuklear::edit (:struct %nuklear::style-edit)
                  :offset 136)
                 (%nuklear::inc-button
                  (:struct %nuklear::style-button) :offset 936)
                 (%nuklear::dec-button
                  (:struct %nuklear::style-button) :offset 1112)
                 (%nuklear::userdata %nuklear::handle :offset 1288)
                 (%nuklear::draw-begin
                  (claw-utils:claw-pointer :void) :offset 1296)
                 (%nuklear::draw-end (claw-utils:claw-pointer :void)
                  :offset 1304))

(cffi:defcstruct (%nuklear::style-chart :size 64)
                 (%nuklear::background (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 32)
                 (%nuklear::selected-color (:struct %nuklear::color)
                  :offset 36)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  40)
                 (%nuklear::border :float :offset 44)
                 (%nuklear::rounding :float :offset 48)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  52))

(cffi:defcstruct (%nuklear::style-tab :size 784)
                 (%nuklear::background (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 32)
                 (%nuklear::text (:struct %nuklear::color) :offset
                  36)
                 (%nuklear::tab-maximize-button
                  (:struct %nuklear::style-button) :offset 40)
                 (%nuklear::tab-minimize-button
                  (:struct %nuklear::style-button) :offset 216)
                 (%nuklear::node-maximize-button
                  (:struct %nuklear::style-button) :offset 392)
                 (%nuklear::node-minimize-button
                  (:struct %nuklear::style-button) :offset 568)
                 (%nuklear::sym-minimize %nuklear::symbol-type
                  :offset 744)
                 (%nuklear::sym-maximize %nuklear::symbol-type
                  :offset 748)
                 (%nuklear::border :float :offset 752)
                 (%nuklear::rounding :float :offset 756)
                 (%nuklear::indent :float :offset 760)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  764)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  772))

(cffi:defcstruct (%nuklear::style-combo :size 352)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 96)
                 (%nuklear::label-normal (:struct %nuklear::color)
                  :offset 100)
                 (%nuklear::label-hover (:struct %nuklear::color)
                  :offset 104)
                 (%nuklear::label-active (:struct %nuklear::color)
                  :offset 108)
                 (%nuklear::symbol-normal (:struct %nuklear::color)
                  :offset 112)
                 (%nuklear::symbol-hover (:struct %nuklear::color)
                  :offset 116)
                 (%nuklear::symbol-active (:struct %nuklear::color)
                  :offset 120)
                 (%nuklear::button (:struct %nuklear::style-button)
                  :offset 128)
                 (%nuklear::sym-normal %nuklear::symbol-type :offset
                  304)
                 (%nuklear::sym-hover %nuklear::symbol-type :offset
                  308)
                 (%nuklear::sym-active %nuklear::symbol-type :offset
                  312)
                 (%nuklear::border :float :offset 316)
                 (%nuklear::rounding :float :offset 320)
                 (%nuklear::content-padding (:struct %nuklear::vec2)
                  :offset 324)
                 (%nuklear::button-padding (:struct %nuklear::vec2)
                  :offset 332)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  340))

(cffi:defcstruct (%nuklear::style-window-header :size 504)
                 (%nuklear::normal (:struct %nuklear::style-item)
                  :offset 0)
                 (%nuklear::hover (:struct %nuklear::style-item)
                  :offset 32)
                 (%nuklear::active (:struct %nuklear::style-item)
                  :offset 64)
                 (%nuklear::close-button
                  (:struct %nuklear::style-button) :offset 96)
                 (%nuklear::minimize-button
                  (:struct %nuklear::style-button) :offset 272)
                 (%nuklear::close-symbol %nuklear::symbol-type
                  :offset 448)
                 (%nuklear::minimize-symbol %nuklear::symbol-type
                  :offset 452)
                 (%nuklear::maximize-symbol %nuklear::symbol-type
                  :offset 456)
                 (%nuklear::label-normal (:struct %nuklear::color)
                  :offset 460)
                 (%nuklear::label-hover (:struct %nuklear::color)
                  :offset 464)
                 (%nuklear::label-active (:struct %nuklear::color)
                  :offset 468)
                 (%nuklear::align %nuklear::style-header-align
                  :offset 472)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  476)
                 (%nuklear::label-padding (:struct %nuklear::vec2)
                  :offset 484)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  492))

(cffi:defcstruct (%nuklear::style-window :size 720)
                 (%nuklear::header
                  (:struct %nuklear::style-window-header) :offset 0)
                 (%nuklear::fixed-background
                  (:struct %nuklear::style-item) :offset 504)
                 (%nuklear::background (:struct %nuklear::color)
                  :offset 536)
                 (%nuklear::border-color (:struct %nuklear::color)
                  :offset 540)
                 (%nuklear::popup-border-color
                  (:struct %nuklear::color) :offset 544)
                 (%nuklear::combo-border-color
                  (:struct %nuklear::color) :offset 548)
                 (%nuklear::contextual-border-color
                  (:struct %nuklear::color) :offset 552)
                 (%nuklear::menu-border-color
                  (:struct %nuklear::color) :offset 556)
                 (%nuklear::group-border-color
                  (:struct %nuklear::color) :offset 560)
                 (%nuklear::tooltip-border-color
                  (:struct %nuklear::color) :offset 564)
                 (%nuklear::scaler (:struct %nuklear::style-item)
                  :offset 568)
                 (%nuklear::border :float :offset 600)
                 (%nuklear::combo-border :float :offset 604)
                 (%nuklear::contextual-border :float :offset 608)
                 (%nuklear::menu-border :float :offset 612)
                 (%nuklear::group-border :float :offset 616)
                 (%nuklear::tooltip-border :float :offset 620)
                 (%nuklear::popup-border :float :offset 624)
                 (%nuklear::min-row-height-padding :float :offset
                  628)
                 (%nuklear::rounding :float :offset 632)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  636)
                 (%nuklear::scrollbar-size (:struct %nuklear::vec2)
                  :offset 644)
                 (%nuklear::min-size (:struct %nuklear::vec2) :offset
                  652)
                 (%nuklear::padding (:struct %nuklear::vec2) :offset
                  660)
                 (%nuklear::group-padding (:struct %nuklear::vec2)
                  :offset 668)
                 (%nuklear::popup-padding (:struct %nuklear::vec2)
                  :offset 676)
                 (%nuklear::combo-padding (:struct %nuklear::vec2)
                  :offset 684)
                 (%nuklear::contextual-padding
                  (:struct %nuklear::vec2) :offset 692)
                 (%nuklear::menu-padding (:struct %nuklear::vec2)
                  :offset 700)
                 (%nuklear::tooltip-padding (:struct %nuklear::vec2)
                  :offset 708))

(cffi:defcstruct (%nuklear::style :size 7544)
                 (%nuklear::font
                  (claw-utils:claw-pointer
                   (:struct %nuklear::user-font))
                  :offset 0)
                 (%nuklear::cursors
                  (claw-utils:claw-pointer
                   (claw-utils:claw-pointer
                    (:struct %nuklear::cursor)))
                  :offset 8)
                 (%nuklear::cursor-active
                  (claw-utils:claw-pointer
                   (:struct %nuklear::cursor))
                  :offset 64)
                 (%nuklear::cursor-last
                  (claw-utils:claw-pointer
                   (:struct %nuklear::cursor))
                  :offset 72)
                 (%nuklear::cursor-visible :int :offset 80)
                 (%nuklear::text (:struct %nuklear::style-text)
                  :offset 84)
                 (%nuklear::button (:struct %nuklear::style-button)
                  :offset 96)
                 (%nuklear::contextual-button
                  (:struct %nuklear::style-button) :offset 272)
                 (%nuklear::menu-button
                  (:struct %nuklear::style-button) :offset 448)
                 (%nuklear::option (:struct %nuklear::style-toggle)
                  :offset 624)
                 (%nuklear::checkbox (:struct %nuklear::style-toggle)
                  :offset 864)
                 (%nuklear::selectable
                  (:struct %nuklear::style-selectable) :offset 1104)
                 (%nuklear::slider (:struct %nuklear::style-slider)
                  :offset 1384)
                 (%nuklear::progress
                  (:struct %nuklear::style-progress) :offset 2024)
                 (%nuklear::property
                  (:struct %nuklear::style-property) :offset 2280)
                 (%nuklear::edit (:struct %nuklear::style-edit)
                  :offset 3592)
                 (%nuklear::chart (:struct %nuklear::style-chart)
                  :offset 4392)
                 (%nuklear::scrollh
                  (:struct %nuklear::style-scrollbar) :offset 4456)
                 (%nuklear::scrollv
                  (:struct %nuklear::style-scrollbar) :offset 5072)
                 (%nuklear::tab (:struct %nuklear::style-tab) :offset
                  5688)
                 (%nuklear::combo (:struct %nuklear::style-combo)
                  :offset 6472)
                 (%nuklear::window (:struct %nuklear::style-window)
                  :offset 6824))

(cffi:defcstruct (%nuklear::buffer-marker :size 16)
                 (%nuklear::active :int :offset 0)
                 (%nuklear::offset %nuklear::size :offset 8))

(cffi:defctype %nuklear::plugin-alloc (claw-utils:claw-pointer :void))

(cffi:defctype %nuklear::plugin-free (claw-utils:claw-pointer :void))

(cffi:defcstruct (%nuklear::allocator :size 24)
                 (%nuklear::userdata %nuklear::handle :offset 0)
                 (%nuklear::alloc %nuklear::plugin-alloc :offset 8)
                 (%nuklear::free %nuklear::plugin-free :offset 16))

(cffi:defcstruct (%nuklear::memory :size 16)
                 (%nuklear::ptr (claw-utils:claw-pointer :void)
                  :offset 0)
                 (%nuklear::size %nuklear::size :offset 8))

(cffi:defcstruct (%nuklear::buffer :size 120)
                 (%nuklear::marker (:struct %nuklear::buffer-marker)
                  :count 2 :offset 0)
                 (%nuklear::pool (:struct %nuklear::allocator)
                  :offset 32)
                 (%nuklear::type %nuklear::allocation-type :offset
                  56)
                 (%nuklear::memory (:struct %nuklear::memory) :offset
                  64)
                 (%nuklear::grow-factor :float :offset 80)
                 (%nuklear::allocated %nuklear::size :offset 88)
                 (%nuklear::needed %nuklear::size :offset 96)
                 (%nuklear::calls %nuklear::size :offset 104)
                 (%nuklear::size %nuklear::size :offset 112))

(cffi:defctype %nuklear::plugin-paste (claw-utils:claw-pointer :void))

(cffi:defctype %nuklear::plugin-copy (claw-utils:claw-pointer :void))

(cffi:defcstruct (%nuklear::clipboard :size 24)
                 (%nuklear::userdata %nuklear::handle :offset 0)
                 (%nuklear::paste %nuklear::plugin-paste :offset 8)
                 (%nuklear::copy %nuklear::plugin-copy :offset 16))

(cffi:defcstruct (%nuklear::config-stack-style-item-element :size 40)
                 (%nuklear::address
                  (claw-utils:claw-pointer
                   (:struct %nuklear::style-item))
                  :offset 0)
                 (%nuklear::old-value (:struct %nuklear::style-item)
                  :offset 8))

(cffi:defcstruct (%nuklear::config-stack-style-item :size 648)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-style-item-element)
                  :count 16 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-float-element :size 16)
                 (%nuklear::address (claw-utils:claw-pointer :float)
                  :offset 0)
                 (%nuklear::old-value :float :offset 8))

(cffi:defcstruct (%nuklear::config-stack-float :size 520)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-float-element)
                  :count 32 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-vec2-element :size 16)
                 (%nuklear::address
                  (claw-utils:claw-pointer (:struct %nuklear::vec2))
                  :offset 0)
                 (%nuklear::old-value (:struct %nuklear::vec2)
                  :offset 8))

(cffi:defcstruct (%nuklear::config-stack-vec2 :size 264)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-vec2-element)
                  :count 16 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-flags-element :size 16)
                 (%nuklear::address
                  (claw-utils:claw-pointer %nuklear::flags) :offset
                  0)
                 (%nuklear::old-value %nuklear::flags :offset 8))

(cffi:defcstruct (%nuklear::config-stack-flags :size 520)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-flags-element)
                  :count 32 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-color-element :size 16)
                 (%nuklear::address
                  (claw-utils:claw-pointer (:struct %nuklear::color))
                  :offset 0)
                 (%nuklear::old-value (:struct %nuklear::color)
                  :offset 8))

(cffi:defcstruct (%nuklear::config-stack-color :size 520)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-color-element)
                  :count 32 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-user-font-element :size 16)
                 (%nuklear::address
                  (claw-utils:claw-pointer
                   (claw-utils:claw-pointer
                    (:struct %nuklear::user-font)))
                  :offset 0)
                 (%nuklear::old-value
                  (claw-utils:claw-pointer
                   (:struct %nuklear::user-font))
                  :offset 8))

(cffi:defcstruct (%nuklear::config-stack-user-font :size 136)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct %nuklear::config-stack-user-font-element)
                  :count 8 :offset 8))

(cffi:defcstruct (%nuklear::config-stack-button-behavior-element
                  :size 16)
                 (%nuklear::address
                  (claw-utils:claw-pointer %nuklear::button-behavior)
                  :offset 0)
                 (%nuklear::old-value %nuklear::button-behavior
                  :offset 8))

(cffi:defcstruct (%nuklear::config-stack-button-behavior :size 136)
                 (%nuklear::head :int :offset 0)
                 (%nuklear::elements
                  (:struct
                   %nuklear::config-stack-button-behavior-element)
                  :count 8 :offset 8))

(cffi:defcstruct (%nuklear::configuration-stacks :size 2744)
                 (%nuklear::style-items
                  (:struct %nuklear::config-stack-style-item) :offset
                  0)
                 (%nuklear::floats
                  (:struct %nuklear::config-stack-float) :offset 648)
                 (%nuklear::vectors
                  (:struct %nuklear::config-stack-vec2) :offset 1168)
                 (%nuklear::flags
                  (:struct %nuklear::config-stack-flags) :offset
                  1432)
                 (%nuklear::colors
                  (:struct %nuklear::config-stack-color) :offset
                  1952)
                 (%nuklear::fonts
                  (:struct %nuklear::config-stack-user-font) :offset
                  2472)
                 (%nuklear::button-behaviors
                  (:struct %nuklear::config-stack-button-behavior)
                  :offset 2608))

(cffi:defcstruct (%nuklear::rect :size 16)
                 (%nuklear::x :float :offset 0)
                 (%nuklear::y :float :offset 4)
                 (%nuklear::w :float :offset 8)
                 (%nuklear::h :float :offset 12))

(cffi:defcstruct (%nuklear::draw-null-texture :size 16)
                 (%nuklear::texture %nuklear::handle :offset 0)
                 (%nuklear::uv (:struct %nuklear::vec2) :offset 8))

(cffi:defcstruct (%nuklear::draw-vertex-layout-element :size 16)
                 (%nuklear::attribute
                  %nuklear::draw-vertex-layout-attribute :offset 0)
                 (%nuklear::format
                  %nuklear::draw-vertex-layout-format :offset 4)
                 (%nuklear::offset %nuklear::size :offset 8))

(cffi:defcstruct (%nuklear::convert-config :size 64)
                 (%nuklear::global-alpha :float :offset 0)
                 (%nuklear::line-aa %nuklear::anti-aliasing :offset
                  4)
                 (%nuklear::shape-aa %nuklear::anti-aliasing :offset
                  8)
                 (%nuklear::circle-segment-count :unsigned-int
                  :offset 12)
                 (%nuklear::arc-segment-count :unsigned-int :offset
                  16)
                 (%nuklear::curve-segment-count :unsigned-int :offset
                  20)
                 (%nuklear::null
                  (:struct %nuklear::draw-null-texture) :offset 24)
                 (%nuklear::vertex-layout
                  (claw-utils:claw-pointer
                   (:struct %nuklear::draw-vertex-layout-element))
                  :offset 40)
                 (%nuklear::vertex-size %nuklear::size :offset 48)
                 (%nuklear::vertex-alignment %nuklear::size :offset
                  56))

(cffi:defcstruct (%nuklear::draw-list :size 240)
                 (%nuklear::clip-rect (:struct %nuklear::rect)
                  :offset 0)
                 (%nuklear::circle-vtx (:struct %nuklear::vec2)
                  :count 12 :offset 16)
                 (%nuklear::config (:struct %nuklear::convert-config)
                  :offset 112)
                 (%nuklear::buffer
                  (claw-utils:claw-pointer
                   (:struct %nuklear::buffer))
                  :offset 176)
                 (%nuklear::vertices
                  (claw-utils:claw-pointer
                   (:struct %nuklear::buffer))
                  :offset 184)
                 (%nuklear::elements
                  (claw-utils:claw-pointer
                   (:struct %nuklear::buffer))
                  :offset 192)
                 (%nuklear::element-count :unsigned-int :offset 200)
                 (%nuklear::vertex-count :unsigned-int :offset 204)
                 (%nuklear::cmd-count :unsigned-int :offset 208)
                 (%nuklear::cmd-offset %nuklear::size :offset 216)
                 (%nuklear::path-count :unsigned-int :offset 224)
                 (%nuklear::path-offset :unsigned-int :offset 228)
                 (%nuklear::line-aa %nuklear::anti-aliasing :offset
                  232)
                 (%nuklear::shape-aa %nuklear::anti-aliasing :offset
                  236))

(cffi:defcstruct (%nuklear::str :size 128)
                 (%nuklear::buffer (:struct %nuklear::buffer) :offset
                  0)
                 (%nuklear::len :int :offset 120))

(cffi:defctype %nuklear::plugin-filter
               (claw-utils:claw-pointer :void))

(cffi:defcstruct (%nuklear::text-undo-record :size 12)
                 (%nuklear::where :int :offset 0)
                 (%nuklear::insert-length :short :offset 4)
                 (%nuklear::delete-length :short :offset 6)
                 (%nuklear::char-storage :short :offset 8))

(cffi:defctype %nuklear::rune :unsigned-int)

(cffi:defcstruct (%nuklear::text-undo-state :size 5192)
                 (%nuklear::undo-rec
                  (:struct %nuklear::text-undo-record) :count 99
                  :offset 0)
                 (%nuklear::undo-char %nuklear::rune :count 999
                  :offset 1188)
                 (%nuklear::undo-point :short :offset 5184)
                 (%nuklear::redo-point :short :offset 5186)
                 (%nuklear::undo-char-point :short :offset 5188)
                 (%nuklear::redo-char-point :short :offset 5190))

(cffi:defcstruct (%nuklear::text-edit :size 5384)
                 (%nuklear::clip (:struct %nuklear::clipboard)
                  :offset 0)
                 (%nuklear::string (:struct %nuklear::str) :offset
                  24)
                 (%nuklear::filter %nuklear::plugin-filter :offset
                  152)
                 (%nuklear::scrollbar (:struct %nuklear::vec2)
                  :offset 160)
                 (%nuklear::cursor :int :offset 168)
                 (%nuklear::select-start :int :offset 172)
                 (%nuklear::select-end :int :offset 176)
                 (%nuklear::mode :unsigned-char :offset 180)
                 (%nuklear::cursor-at-end-of-line :unsigned-char
                  :offset 181)
                 (%nuklear::initialized :unsigned-char :offset 182)
                 (%nuklear::has-preferred-x :unsigned-char :offset
                  183)
                 (%nuklear::single-line :unsigned-char :offset 184)
                 (%nuklear::active :unsigned-char :offset 185)
                 (%nuklear::padding1 :unsigned-char :offset 186)
                 (%nuklear::preferred-x :float :offset 188)
                 (%nuklear::undo (:struct %nuklear::text-undo-state)
                  :offset 192))

(cffi:defcstruct (%nuklear::command-buffer :size 64)
                 (%nuklear::base
                  (claw-utils:claw-pointer
                   (:struct %nuklear::buffer))
                  :offset 0)
                 (%nuklear::clip (:struct %nuklear::rect) :offset 8)
                 (%nuklear::use-clipping :int :offset 24)
                 (%nuklear::userdata %nuklear::handle :offset 32)
                 (%nuklear::begin %nuklear::size :offset 40)
                 (%nuklear::end %nuklear::size :offset 48)
                 (%nuklear::last %nuklear::size :offset 56))

(cffi:defcstruct (%nuklear::page :size 528))

(cffi:defctype %nuklear::hash :unsigned-int)

(cffi:defctype %nuklear::uint :unsigned-int)

(cffi:defcstruct (%nuklear::table :size 496))

(cffi:defcstruct (%nuklear::table :size 496)
                 (%nuklear::seq :unsigned-int :offset 0)
                 (%nuklear::size :unsigned-int :offset 4)
                 (%nuklear::keys %nuklear::hash :count 59 :offset 8)
                 (%nuklear::values %nuklear::uint :count 59 :offset
                  244)
                 (%nuklear::next
                  (claw-utils:claw-pointer (:struct %nuklear::table))
                  :offset 480)
                 (%nuklear::prev
                  (claw-utils:claw-pointer (:struct %nuklear::table))
                  :offset 488))

(cffi:defcstruct (%nuklear::scroll :size 8)
                 (%nuklear::x %nuklear::uint :offset 0)
                 (%nuklear::y %nuklear::uint :offset 4))

(cffi:defcstruct (%nuklear::menu-state :size 24)
                 (%nuklear::x :float :offset 0)
                 (%nuklear::y :float :offset 4)
                 (%nuklear::w :float :offset 8)
                 (%nuklear::h :float :offset 12)
                 (%nuklear::offset (:struct %nuklear::scroll) :offset
                  16))

(cffi:defcstruct (%nuklear::row-layout :size 136)
                 (%nuklear::type %nuklear::panel-row-layout-type
                  :offset 0)
                 (%nuklear::index :int :offset 4)
                 (%nuklear::height :float :offset 8)
                 (%nuklear::min-height :float :offset 12)
                 (%nuklear::columns :int :offset 16)
                 (%nuklear::ratio (claw-utils:claw-pointer :float)
                  :offset 24)
                 (%nuklear::item-width :float :offset 32)
                 (%nuklear::item-height :float :offset 36)
                 (%nuklear::item-offset :float :offset 40)
                 (%nuklear::filled :float :offset 44)
                 (%nuklear::item (:struct %nuklear::rect) :offset 48)
                 (%nuklear::tree-depth :int :offset 64)
                 (%nuklear::templates :float :count 16 :offset 68))

(cffi:defcstruct (%nuklear::chart-slot :size 40)
                 (%nuklear::type %nuklear::chart-type :offset 0)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  4)
                 (%nuklear::highlight (:struct %nuklear::color)
                  :offset 8)
                 (%nuklear::min :float :offset 12)
                 (%nuklear::max :float :offset 16)
                 (%nuklear::range :float :offset 20)
                 (%nuklear::count :int :offset 24)
                 (%nuklear::last (:struct %nuklear::vec2) :offset 28)
                 (%nuklear::index :int :offset 36))

(cffi:defcstruct (%nuklear::chart :size 180)
                 (%nuklear::slot :int :offset 0)
                 (%nuklear::x :float :offset 4)
                 (%nuklear::y :float :offset 8)
                 (%nuklear::w :float :offset 12)
                 (%nuklear::h :float :offset 16)
                 (%nuklear::slots (:struct %nuklear::chart-slot)
                  :count 4 :offset 20))

(cffi:defcstruct (%nuklear::panel :size 448))

(cffi:defcstruct (%nuklear::panel :size 448)
                 (%nuklear::type %nuklear::panel-type :offset 0)
                 (%nuklear::flags %nuklear::flags :offset 4)
                 (%nuklear::bounds (:struct %nuklear::rect) :offset
                  8)
                 (%nuklear::offset-x
                  (claw-utils:claw-pointer %nuklear::uint) :offset
                  24)
                 (%nuklear::offset-y
                  (claw-utils:claw-pointer %nuklear::uint) :offset
                  32)
                 (%nuklear::at-x :float :offset 40)
                 (%nuklear::at-y :float :offset 44)
                 (%nuklear::max-x :float :offset 48)
                 (%nuklear::footer-height :float :offset 52)
                 (%nuklear::header-height :float :offset 56)
                 (%nuklear::border :float :offset 60)
                 (%nuklear::has-scrolling :unsigned-int :offset 64)
                 (%nuklear::clip (:struct %nuklear::rect) :offset 68)
                 (%nuklear::menu (:struct %nuklear::menu-state)
                  :offset 84)
                 (%nuklear::row (:struct %nuklear::row-layout)
                  :offset 112)
                 (%nuklear::chart (:struct %nuklear::chart) :offset
                  248)
                 (%nuklear::buffer
                  (claw-utils:claw-pointer
                   (:struct %nuklear::command-buffer))
                  :offset 432)
                 (%nuklear::parent
                  (claw-utils:claw-pointer (:struct %nuklear::panel))
                  :offset 440))

(cffi:defcstruct (%nuklear::property-state :size 104)
                 (%nuklear::active :int :offset 0)
                 (%nuklear::prev :int :offset 4)
                 (%nuklear::buffer :char :count 64 :offset 8)
                 (%nuklear::length :int :offset 72)
                 (%nuklear::cursor :int :offset 76)
                 (%nuklear::select-start :int :offset 80)
                 (%nuklear::select-end :int :offset 84)
                 (%nuklear::name %nuklear::hash :offset 88)
                 (%nuklear::seq :unsigned-int :offset 92)
                 (%nuklear::old :unsigned-int :offset 96)
                 (%nuklear::state :int :offset 100))

(cffi:defcstruct (%nuklear::window :size 472))

(cffi:defcstruct (%nuklear::popup-buffer :size 40)
                 (%nuklear::begin %nuklear::size :offset 0)
                 (%nuklear::parent %nuklear::size :offset 8)
                 (%nuklear::last %nuklear::size :offset 16)
                 (%nuklear::end %nuklear::size :offset 24)
                 (%nuklear::active :int :offset 32))

(cffi:defcstruct (%nuklear::popup-state :size 96)
                 (%nuklear::win
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 0)
                 (%nuklear::type %nuklear::panel-type :offset 8)
                 (%nuklear::buf (:struct %nuklear::popup-buffer)
                  :offset 16)
                 (%nuklear::name %nuklear::hash :offset 56)
                 (%nuklear::active :int :offset 60)
                 (%nuklear::combo-count :unsigned-int :offset 64)
                 (%nuklear::con-count :unsigned-int :offset 68)
                 (%nuklear::con-old :unsigned-int :offset 72)
                 (%nuklear::active-con :unsigned-int :offset 76)
                 (%nuklear::header (:struct %nuklear::rect) :offset
                  80))

(cffi:defcstruct (%nuklear::edit-state :size 44)
                 (%nuklear::name %nuklear::hash :offset 0)
                 (%nuklear::seq :unsigned-int :offset 4)
                 (%nuklear::old :unsigned-int :offset 8)
                 (%nuklear::active :int :offset 12)
                 (%nuklear::prev :int :offset 16)
                 (%nuklear::cursor :int :offset 20)
                 (%nuklear::sel-start :int :offset 24)
                 (%nuklear::sel-end :int :offset 28)
                 (%nuklear::scrollbar (:struct %nuklear::scroll)
                  :offset 32)
                 (%nuklear::mode :unsigned-char :offset 40)
                 (%nuklear::single-line :unsigned-char :offset 41))

(cffi:defcstruct (%nuklear::window :size 472)
                 (%nuklear::seq :unsigned-int :offset 0)
                 (%nuklear::name %nuklear::hash :offset 4)
                 (%nuklear::name-string :char :count 64 :offset 8)
                 (%nuklear::flags %nuklear::flags :offset 72)
                 (%nuklear::bounds (:struct %nuklear::rect) :offset
                  76)
                 (%nuklear::scrollbar (:struct %nuklear::scroll)
                  :offset 92)
                 (%nuklear::buffer (:struct %nuklear::command-buffer)
                  :offset 104)
                 (%nuklear::layout
                  (claw-utils:claw-pointer (:struct %nuklear::panel))
                  :offset 168)
                 (%nuklear::scrollbar-hiding-timer :float :offset
                  176)
                 (%nuklear::property
                  (:struct %nuklear::property-state) :offset 180)
                 (%nuklear::popup (:struct %nuklear::popup-state)
                  :offset 288)
                 (%nuklear::edit (:struct %nuklear::edit-state)
                  :offset 384)
                 (%nuklear::scrolled :unsigned-int :offset 428)
                 (%nuklear::tables
                  (claw-utils:claw-pointer (:struct %nuklear::table))
                  :offset 432)
                 (%nuklear::table-count :unsigned-int :offset 440)
                 (%nuklear::next
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 448)
                 (%nuklear::prev
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 456)
                 (%nuklear::parent
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 464))

(cffi:defcunion (%nuklear::page-data :size 496)
                (%nuklear::tbl (:struct %nuklear::table))
                (%nuklear::pan (:struct %nuklear::panel))
                (%nuklear::win (:struct %nuklear::window)))

(cffi:defcstruct (%nuklear::page-element :size 512))

(cffi:defcstruct (%nuklear::page-element :size 512)
                 (%nuklear::data (:union %nuklear::page-data) :offset
                  0)
                 (%nuklear::next
                  (claw-utils:claw-pointer
                   (:struct %nuklear::page-element))
                  :offset 496)
                 (%nuklear::prev
                  (claw-utils:claw-pointer
                   (:struct %nuklear::page-element))
                  :offset 504))

(cffi:defcstruct (%nuklear::page :size 528)
                 (%nuklear::size :unsigned-int :offset 0)
                 (%nuklear::next
                  (claw-utils:claw-pointer (:struct %nuklear::page))
                  :offset 8)
                 (%nuklear::win (:struct %nuklear::page-element)
                  :count 1 :offset 16))

(cffi:defcstruct (%nuklear::pool :size 72)
                 (%nuklear::alloc (:struct %nuklear::allocator)
                  :offset 0)
                 (%nuklear::type %nuklear::allocation-type :offset
                  24)
                 (%nuklear::page-count :unsigned-int :offset 28)
                 (%nuklear::pages
                  (claw-utils:claw-pointer (:struct %nuklear::page))
                  :offset 32)
                 (%nuklear::freelist
                  (claw-utils:claw-pointer
                   (:struct %nuklear::page-element))
                  :offset 40)
                 (%nuklear::capacity :unsigned-int :offset 48)
                 (%nuklear::size %nuklear::size :offset 56)
                 (%nuklear::cap %nuklear::size :offset 64))

(cffi:defcstruct (%nuklear::context :size 16624)
                 (%nuklear::input (:struct %nuklear::input) :offset
                  0)
                 (%nuklear::style (:struct %nuklear::style) :offset
                  360)
                 (%nuklear::memory (:struct %nuklear::buffer) :offset
                  7904)
                 (%nuklear::clip (:struct %nuklear::clipboard)
                  :offset 8024)
                 (%nuklear::last-widget-state %nuklear::flags :offset
                  8048)
                 (%nuklear::button-behavior %nuklear::button-behavior
                  :offset 8052)
                 (%nuklear::stacks
                  (:struct %nuklear::configuration-stacks) :offset
                  8056)
                 (%nuklear::delta-time-seconds :float :offset 10800)
                 (%nuklear::draw-list (:struct %nuklear::draw-list)
                  :offset 10808)
                 (%nuklear::text-edit (:struct %nuklear::text-edit)
                  :offset 11048)
                 (%nuklear::overlay
                  (:struct %nuklear::command-buffer) :offset 16432)
                 (%nuklear::build :int :offset 16496)
                 (%nuklear::use-pool :int :offset 16500)
                 (%nuklear::pool (:struct %nuklear::pool) :offset
                  16504)
                 (%nuklear::begin
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 16576)
                 (%nuklear::end
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 16584)
                 (%nuklear::active
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 16592)
                 (%nuklear::current
                  (claw-utils:claw-pointer
                   (:struct %nuklear::window))
                  :offset 16600)
                 (%nuklear::freelist
                  (claw-utils:claw-pointer
                   (:struct %nuklear::page-element))
                  :offset 16608)
                 (%nuklear::count :unsigned-int :offset 16616)
                 (%nuklear::seq :unsigned-int :offset 16620))

(declaim (inline %nuklear::command-list-begin))

(cffi:defcfun ("nk__begin" %nuklear::command-list-begin)
              (claw-utils:claw-pointer (:struct %nuklear::command))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(cffi:defcstruct (%nuklear::draw-command :size 32)
                 (%nuklear::elem-count :unsigned-int :offset 0)
                 (%nuklear::clip-rect (:struct %nuklear::rect)
                  :offset 4)
                 (%nuklear::texture %nuklear::handle :offset 24))

(declaim (inline %nuklear::draw-list-begin))

(cffi:defcfun ("nk__draw_begin" %nuklear::draw-list-begin)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::%draw-end))

(cffi:defcfun ("nk__draw_end" %nuklear::%draw-end)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::%draw-list-begin))

(cffi:defcfun ("nk__draw_list_begin" %nuklear::%draw-list-begin)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::%draw-list-end))

(cffi:defcfun ("nk__draw_list_end" %nuklear::%draw-list-end)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::%draw-list-next))

(cffi:defcfun ("nk__draw_list_next" %nuklear::%draw-list-next)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-command)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list))))

(declaim (inline %nuklear::draw-list-next))

(cffi:defcfun ("nk__draw_next" %nuklear::draw-list-next)
              (claw-utils:claw-pointer
               (:struct %nuklear::draw-command))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-command)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::command-list-next))

(cffi:defcfun ("nk__next" %nuklear::command-list-next)
              (claw-utils:claw-pointer (:struct %nuklear::command))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::command))))

(declaim (inline %nuklear::begin))

(cffi:defcfun ("__claw__nk_begin" %nuklear::begin)
              :int
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::flags %nuklear::flags))

(declaim (inline %nuklear::begin-titled))

(cffi:defcfun ("__claw__nk_begin_titled" %nuklear::begin-titled)
              :int
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::flags %nuklear::flags))

(declaim (inline %nuklear::buffer-clear))

(cffi:defcfun ("nk_buffer_clear" %nuklear::buffer-clear)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::buffer-free))

(cffi:defcfun ("nk_buffer_free" %nuklear::buffer-free)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(cffi:defcstruct (%nuklear::memory-status :size 48)
                 (%nuklear::memory (claw-utils:claw-pointer :void)
                  :offset 0)
                 (%nuklear::type :unsigned-int :offset 8)
                 (%nuklear::size %nuklear::size :offset 16)
                 (%nuklear::allocated %nuklear::size :offset 24)
                 (%nuklear::needed %nuklear::size :offset 32)
                 (%nuklear::calls %nuklear::size :offset 40))

(declaim (inline %nuklear::buffer-info))

(cffi:defcfun ("nk_buffer_info" %nuklear::buffer-info)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::memory-status)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::buffer-init))

(cffi:defcfun ("nk_buffer_init" %nuklear::buffer-init)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator)))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::buffer-init-default))

(cffi:defcfun ("nk_buffer_init_default"
               %nuklear::buffer-init-default)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::buffer-init-fixed))

(cffi:defcfun ("nk_buffer_init_fixed" %nuklear::buffer-init-fixed)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::buffer-mark))

(cffi:defcfun ("nk_buffer_mark" %nuklear::buffer-mark)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::type %nuklear::buffer-allocation-type))

(declaim (inline %nuklear::buffer-memory))

(cffi:defcfun ("nk_buffer_memory" %nuklear::buffer-memory)
              (claw-utils:claw-pointer :void)
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::buffer-memory-const))

(cffi:defcfun ("nk_buffer_memory_const"
               %nuklear::buffer-memory-const)
              (claw-utils:claw-pointer :void)
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::buffer-push))

(cffi:defcfun ("nk_buffer_push" %nuklear::buffer-push)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::type %nuklear::buffer-allocation-type)
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size)
              (%nuklear::align %nuklear::size))

(declaim (inline %nuklear::buffer-reset))

(cffi:defcfun ("nk_buffer_reset" %nuklear::buffer-reset)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::type %nuklear::buffer-allocation-type))

(declaim (inline %nuklear::buffer-total))

(cffi:defcfun ("nk_buffer_total" %nuklear::buffer-total)
              %nuklear::size
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::buffer))))

(declaim (inline %nuklear::button-color))

(cffi:defcfun ("__claw__nk_button_color" %nuklear::button-color)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::button-image))

(cffi:defcfun ("__claw__nk_button_image" %nuklear::button-image)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image))))

(declaim (inline %nuklear::button-image-label))

(cffi:defcfun ("__claw__nk_button_image_label"
               %nuklear::button-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::text-alignment %nuklear::flags))

(declaim (inline %nuklear::button-image-label-styled))

(cffi:defcfun ("__claw__nk_button_image_label_styled"
               %nuklear::button-image-label-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg3 claw-utils:claw-string)
              (%nuklear::text-alignment %nuklear::flags))

(declaim (inline %nuklear::button-image-styled))

(cffi:defcfun ("__claw__nk_button_image_styled"
               %nuklear::button-image-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image))))

(declaim (inline %nuklear::button-image-text))

(cffi:defcfun ("__claw__nk_button_image_text"
               %nuklear::button-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::button-image-text-styled))

(cffi:defcfun ("__claw__nk_button_image_text_styled"
               %nuklear::button-image-text-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg3 claw-utils:claw-string)
              (%nuklear::arg4 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::button-label))

(cffi:defcfun ("nk_button_label" %nuklear::button-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::title claw-utils:claw-string))

(declaim (inline %nuklear::button-label-styled))

(cffi:defcfun ("nk_button_label_styled"
               %nuklear::button-label-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::title claw-utils:claw-string))

(declaim (inline %nuklear::button-pop-behavior))

(cffi:defcfun ("nk_button_pop_behavior"
               %nuklear::button-pop-behavior)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::button-push-behavior))

(cffi:defcfun ("nk_button_push_behavior"
               %nuklear::button-push-behavior)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::button-behavior))

(declaim (inline %nuklear::button-set-behavior))

(cffi:defcfun ("nk_button_set_behavior"
               %nuklear::button-set-behavior)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::button-behavior))

(declaim (inline %nuklear::button-symbol))

(cffi:defcfun ("nk_button_symbol" %nuklear::button-symbol)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type))

(declaim (inline %nuklear::button-symbol-label))

(cffi:defcfun ("nk_button_symbol_label"
               %nuklear::button-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::text-alignment %nuklear::flags))

(declaim (inline %nuklear::button-symbol-label-styled))

(cffi:defcfun ("nk_button_symbol_label_styled"
               %nuklear::button-symbol-label-styled)
              :int
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::style
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::symbol %nuklear::symbol-type)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::align %nuklear::flags))

(declaim (inline %nuklear::button-symbol-styled))

(cffi:defcfun ("nk_button_symbol_styled"
               %nuklear::button-symbol-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::arg2 %nuklear::symbol-type))

(declaim (inline %nuklear::button-symbol-text))

(cffi:defcfun ("nk_button_symbol_text" %nuklear::button-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::button-symbol-text-styled))

(cffi:defcfun ("nk_button_symbol_text_styled"
               %nuklear::button-symbol-text-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::arg2 %nuklear::symbol-type)
              (%nuklear::arg3 claw-utils:claw-string)
              (%nuklear::arg4 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::button-text))

(cffi:defcfun ("nk_button_text" %nuklear::button-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::len :int))

(declaim (inline %nuklear::button-text-styled))

(cffi:defcfun ("nk_button_text_styled" %nuklear::button-text-styled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-button)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::len :int))

(declaim (inline %nuklear::chart-add-slot))

(cffi:defcfun ("nk_chart_add_slot" %nuklear::chart-add-slot)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::count :int)
              (%nuklear::min-value :float)
              (%nuklear::max-value :float))

(declaim (inline %nuklear::chart-add-slot-colored))

(cffi:defcfun ("__claw__nk_chart_add_slot_colored"
               %nuklear::chart-add-slot-colored)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::active
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::count :int)
              (%nuklear::min-value :float)
              (%nuklear::max-value :float))

(declaim (inline %nuklear::chart-begin))

(cffi:defcfun ("nk_chart_begin" %nuklear::chart-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::num :int)
              (%nuklear::min :float)
              (%nuklear::max :float))

(declaim (inline %nuklear::chart-begin-colored))

(cffi:defcfun ("__claw__nk_chart_begin_colored"
               %nuklear::chart-begin-colored)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::active
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::num :int)
              (%nuklear::min :float)
              (%nuklear::max :float))

(declaim (inline %nuklear::chart-end))

(cffi:defcfun ("nk_chart_end" %nuklear::chart-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::chart-push))

(cffi:defcfun ("nk_chart_push" %nuklear::chart-push)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 :float))

(declaim (inline %nuklear::chart-push-slot))

(cffi:defcfun ("nk_chart_push_slot" %nuklear::chart-push-slot)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 :float)
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::check-flags-label))

(cffi:defcfun ("nk_check_flags_label" %nuklear::check-flags-label)
              :unsigned-int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::flags :unsigned-int)
              (%nuklear::value :unsigned-int))

(declaim (inline %nuklear::check-flags-text))

(cffi:defcfun ("nk_check_flags_text" %nuklear::check-flags-text)
              :unsigned-int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::flags :unsigned-int)
              (%nuklear::value :unsigned-int))

(declaim (inline %nuklear::check-label))

(cffi:defcfun ("nk_check_label" %nuklear::check-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::active :int))

(declaim (inline %nuklear::check-text))

(cffi:defcfun ("nk_check_text" %nuklear::check-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::active :int))

(declaim (inline %nuklear::checkbox-flags-label))

(cffi:defcfun ("nk_checkbox_flags_label"
               %nuklear::checkbox-flags-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::flags
               (claw-utils:claw-pointer :unsigned-int))
              (%nuklear::value :unsigned-int))

(declaim (inline %nuklear::checkbox-flags-text))

(cffi:defcfun ("nk_checkbox_flags_text"
               %nuklear::checkbox-flags-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::flags
               (claw-utils:claw-pointer :unsigned-int))
              (%nuklear::value :unsigned-int))

(declaim (inline %nuklear::checkbox-label))

(cffi:defcfun ("nk_checkbox_label" %nuklear::checkbox-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::active (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::checkbox-text))

(cffi:defcfun ("nk_checkbox_text" %nuklear::checkbox-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::active (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::clear))

(cffi:defcfun ("nk_clear" %nuklear::clear)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(cffi:defcstruct (%nuklear::colorf :size 16)
                 (%nuklear::r :float :offset 0)
                 (%nuklear::g :float :offset 4)
                 (%nuklear::b :float :offset 8)
                 (%nuklear::a :float :offset 12))

(declaim (inline %nuklear::color-cf))

(cffi:defcfun ("__claw__nk_color_cf" %nuklear::color-cf)
              (claw-utils:claw-pointer (:struct %nuklear::colorf))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-d))

(cffi:defcfun ("__claw__nk_color_d" %nuklear::color-d)
              :void
              (%nuklear::r (claw-utils:claw-pointer :double))
              (%nuklear::g (claw-utils:claw-pointer :double))
              (%nuklear::b (claw-utils:claw-pointer :double))
              (%nuklear::a (claw-utils:claw-pointer :double))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-dv))

(cffi:defcfun ("__claw__nk_color_dv" %nuklear::color-dv)
              :void
              (%nuklear::rgba-out (claw-utils:claw-pointer :double))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-f))

(cffi:defcfun ("__claw__nk_color_f" %nuklear::color-f)
              :void
              (%nuklear::r (claw-utils:claw-pointer :float))
              (%nuklear::g (claw-utils:claw-pointer :float))
              (%nuklear::b (claw-utils:claw-pointer :float))
              (%nuklear::a (claw-utils:claw-pointer :float))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-fv))

(cffi:defcfun ("__claw__nk_color_fv" %nuklear::color-fv)
              :void
              (%nuklear::rgba-out (claw-utils:claw-pointer :float))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hex-rgb))

(cffi:defcfun ("__claw__nk_color_hex_rgb" %nuklear::color-hex-rgb)
              :void
              (%nuklear::output claw-utils:claw-string)
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hex-rgba))

(cffi:defcfun ("__claw__nk_color_hex_rgba" %nuklear::color-hex-rgba)
              :void
              (%nuklear::output claw-utils:claw-string)
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-b))

(cffi:defcfun ("__claw__nk_color_hsv_b" %nuklear::color-hsv-b)
              :void
              (%nuklear::out-h
               (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::out-s
               (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::out-v
               (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-bv))

(cffi:defcfun ("__claw__nk_color_hsv_bv" %nuklear::color-hsv-bv)
              :void
              (%nuklear::hsv-out
               (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-f))

(cffi:defcfun ("__claw__nk_color_hsv_f" %nuklear::color-hsv-f)
              :void
              (%nuklear::out-h (claw-utils:claw-pointer :float))
              (%nuklear::out-s (claw-utils:claw-pointer :float))
              (%nuklear::out-v (claw-utils:claw-pointer :float))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-fv))

(cffi:defcfun ("__claw__nk_color_hsv_fv" %nuklear::color-hsv-fv)
              :void
              (%nuklear::hsv-out (claw-utils:claw-pointer :float))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-i))

(cffi:defcfun ("__claw__nk_color_hsv_i" %nuklear::color-hsv-i)
              :void
              (%nuklear::out-h (claw-utils:claw-pointer :int))
              (%nuklear::out-s (claw-utils:claw-pointer :int))
              (%nuklear::out-v (claw-utils:claw-pointer :int))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsv-iv))

(cffi:defcfun ("__claw__nk_color_hsv_iv" %nuklear::color-hsv-iv)
              :void
              (%nuklear::hsv-out (claw-utils:claw-pointer :int))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-b))

(cffi:defcfun ("__claw__nk_color_hsva_b" %nuklear::color-hsva-b)
              :void
              (%nuklear::h (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::s (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::v (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::a (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-bv))

(cffi:defcfun ("__claw__nk_color_hsva_bv" %nuklear::color-hsva-bv)
              :void
              (%nuklear::hsva-out
               (claw-utils:claw-pointer %nuklear::byte))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-f))

(cffi:defcfun ("__claw__nk_color_hsva_f" %nuklear::color-hsva-f)
              :void
              (%nuklear::out-h (claw-utils:claw-pointer :float))
              (%nuklear::out-s (claw-utils:claw-pointer :float))
              (%nuklear::out-v (claw-utils:claw-pointer :float))
              (%nuklear::out-a (claw-utils:claw-pointer :float))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-fv))

(cffi:defcfun ("__claw__nk_color_hsva_fv" %nuklear::color-hsva-fv)
              :void
              (%nuklear::hsva-out (claw-utils:claw-pointer :float))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-i))

(cffi:defcfun ("__claw__nk_color_hsva_i" %nuklear::color-hsva-i)
              :void
              (%nuklear::h (claw-utils:claw-pointer :int))
              (%nuklear::s (claw-utils:claw-pointer :int))
              (%nuklear::v (claw-utils:claw-pointer :int))
              (%nuklear::a (claw-utils:claw-pointer :int))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-hsva-iv))

(cffi:defcfun ("__claw__nk_color_hsva_iv" %nuklear::color-hsva-iv)
              :void
              (%nuklear::hsva-out (claw-utils:claw-pointer :int))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::color-pick))

(cffi:defcfun ("nk_color_pick" %nuklear::color-pick)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::arg2 %nuklear::color-format))

(declaim (inline %nuklear::color-picker))

(cffi:defcfun ("__claw__nk_color_picker" %nuklear::color-picker)
              (claw-utils:claw-pointer (:struct %nuklear::colorf))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::arg2 %nuklear::color-format))

(declaim (inline %nuklear::color-u32))

(cffi:defcfun ("__claw__nk_color_u32" %nuklear::color-u32)
              %nuklear::uint
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::colorf-hsva-f))

(cffi:defcfun ("__claw__nk_colorf_hsva_f" %nuklear::colorf-hsva-f)
              :void
              (%nuklear::out-h (claw-utils:claw-pointer :float))
              (%nuklear::out-s (claw-utils:claw-pointer :float))
              (%nuklear::out-v (claw-utils:claw-pointer :float))
              (%nuklear::out-a (claw-utils:claw-pointer :float))
              (%nuklear::in
               (claw-utils:claw-pointer (:struct %nuklear::colorf))))

(declaim (inline %nuklear::colorf-hsva-fv))

(cffi:defcfun ("__claw__nk_colorf_hsva_fv" %nuklear::colorf-hsva-fv)
              :void
              (%nuklear::hsva (claw-utils:claw-pointer :float))
              (%nuklear::in
               (claw-utils:claw-pointer (:struct %nuklear::colorf))))

(declaim (inline %nuklear::combo))

(cffi:defcfun ("__claw__nk_combo" %nuklear::combo)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items
               (claw-utils:claw-pointer claw-utils:claw-string))
              (%nuklear::count :int)
              (%nuklear::selected :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-color))

(cffi:defcfun ("__claw__nk_combo_begin_color"
               %nuklear::combo-begin-color)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::color
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-image))

(cffi:defcfun ("__claw__nk_combo_begin_image"
               %nuklear::combo-begin-image)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-image-label))

(cffi:defcfun ("__claw__nk_combo_begin_image_label"
               %nuklear::combo-begin-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-image-text))

(cffi:defcfun ("__claw__nk_combo_begin_image_text"
               %nuklear::combo-begin-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-label))

(cffi:defcfun ("__claw__nk_combo_begin_label"
               %nuklear::combo-begin-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-symbol))

(cffi:defcfun ("__claw__nk_combo_begin_symbol"
               %nuklear::combo-begin-symbol)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-symbol-label))

(cffi:defcfun ("__claw__nk_combo_begin_symbol_label"
               %nuklear::combo-begin-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-symbol-text))

(cffi:defcfun ("__claw__nk_combo_begin_symbol_text"
               %nuklear::combo-begin-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::arg3 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-begin-text))

(cffi:defcfun ("__claw__nk_combo_begin_text"
               %nuklear::combo-begin-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::selected claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-callback))

(cffi:defcfun ("__claw__nk_combo_callback" %nuklear::combo-callback)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::item-getter (claw-utils:claw-pointer :void))
              (%nuklear::userdata (claw-utils:claw-pointer :void))
              (%nuklear::selected :int)
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-close))

(cffi:defcfun ("nk_combo_close" %nuklear::combo-close)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::combo-end))

(cffi:defcfun ("nk_combo_end" %nuklear::combo-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::combo-item-image-label))

(cffi:defcfun ("__claw__nk_combo_item_image_label"
               %nuklear::combo-item-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-item-image-text))

(cffi:defcfun ("__claw__nk_combo_item_image_text"
               %nuklear::combo-item-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-item-label))

(cffi:defcfun ("nk_combo_item_label" %nuklear::combo-item-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-item-symbol-label))

(cffi:defcfun ("nk_combo_item_symbol_label"
               %nuklear::combo-item-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-item-symbol-text))

(cffi:defcfun ("nk_combo_item_symbol_text"
               %nuklear::combo-item-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-item-text))

(cffi:defcfun ("nk_combo_item_text" %nuklear::combo-item-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::combo-separator))

(cffi:defcfun ("__claw__nk_combo_separator"
               %nuklear::combo-separator)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items-separated-by-separator
               claw-utils:claw-string)
              (%nuklear::separator :int)
              (%nuklear::selected :int)
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combo-string))

(cffi:defcfun ("__claw__nk_combo_string" %nuklear::combo-string)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items-separated-by-zeros
               claw-utils:claw-string)
              (%nuklear::selected :int)
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combobox))

(cffi:defcfun ("__claw__nk_combobox" %nuklear::combobox)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items
               (claw-utils:claw-pointer claw-utils:claw-string))
              (%nuklear::count :int)
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combobox-callback))

(cffi:defcfun ("__claw__nk_combobox_callback"
               %nuklear::combobox-callback)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::item-getter (claw-utils:claw-pointer :void))
              (%nuklear::arg2 (claw-utils:claw-pointer :void))
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combobox-separator))

(cffi:defcfun ("__claw__nk_combobox_separator"
               %nuklear::combobox-separator)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items-separated-by-separator
               claw-utils:claw-string)
              (%nuklear::separator :int)
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::combobox-string))

(cffi:defcfun ("__claw__nk_combobox_string"
               %nuklear::combobox-string)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::items-separated-by-zeros
               claw-utils:claw-string)
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::count :int)
              (%nuklear::item-height :int)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::contextual-begin))

(cffi:defcfun ("__claw__nk_contextual_begin"
               %nuklear::contextual-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::flags)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::trigger-bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::contextual-close))

(cffi:defcfun ("nk_contextual_close" %nuklear::contextual-close)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::contextual-end))

(cffi:defcfun ("nk_contextual_end" %nuklear::contextual-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::contextual-item-image-label))

(cffi:defcfun ("__claw__nk_contextual_item_image_label"
               %nuklear::contextual-item-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::contextual-item-image-text))

(cffi:defcfun ("__claw__nk_contextual_item_image_text"
               %nuklear::contextual-item-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::contextual-item-label))

(cffi:defcfun ("nk_contextual_item_label"
               %nuklear::contextual-item-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags))

(declaim (inline %nuklear::contextual-item-symbol-label))

(cffi:defcfun ("nk_contextual_item_symbol_label"
               %nuklear::contextual-item-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::contextual-item-symbol-text))

(cffi:defcfun ("nk_contextual_item_symbol_text"
               %nuklear::contextual-item-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::contextual-item-text))

(cffi:defcfun ("nk_contextual_item_text"
               %nuklear::contextual-item-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags))

(declaim (inline %nuklear::convert))

(cffi:defcfun ("nk_convert" %nuklear::convert)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::cmds
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::vertices
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::elements
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::arg4
               (claw-utils:claw-pointer
                (:struct %nuklear::convert-config))))

(declaim (inline %nuklear::draw-image))

(cffi:defcfun ("__claw__nk_draw_image" %nuklear::draw-image)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-add-image))

(cffi:defcfun ("__claw__nk_draw_list_add_image"
               %nuklear::draw-list-add-image)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::texture
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::rect
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-add-text))

(cffi:defcfun ("__claw__nk_draw_list_add_text"
               %nuklear::draw-list-add-text)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::text claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::font-height :float)
              (%nuklear::arg6
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-fill-circle))

(cffi:defcfun ("__claw__nk_draw_list_fill_circle"
               %nuklear::draw-list-fill-circle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::center
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::radius :float)
              (%nuklear::col
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::segs :unsigned-int))

(declaim (inline %nuklear::draw-list-fill-poly-convex))

(cffi:defcfun ("__claw__nk_draw_list_fill_poly_convex"
               %nuklear::draw-list-fill-poly-convex)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::points
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::count :unsigned-int)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::arg4 %nuklear::anti-aliasing))

(declaim (inline %nuklear::draw-list-fill-rect))

(cffi:defcfun ("__claw__nk_draw_list_fill_rect"
               %nuklear::draw-list-fill-rect)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::rect
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rounding :float))

(declaim (inline %nuklear::draw-list-fill-rect-multi-color))

(cffi:defcfun ("__claw__nk_draw_list_fill_rect_multi_color"
               %nuklear::draw-list-fill-rect-multi-color)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::rect
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::left
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::top
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::right
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::bottom
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-fill-triangle))

(cffi:defcfun ("__claw__nk_draw_list_fill_triangle"
               %nuklear::draw-list-fill-triangle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::a
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::b
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::c
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-init))

(cffi:defcfun ("nk_draw_list_init" %nuklear::draw-list-init)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list))))

(declaim (inline %nuklear::draw-list-path-arc-to))

(cffi:defcfun ("__claw__nk_draw_list_path_arc_to"
               %nuklear::draw-list-path-arc-to)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::center
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::radius :float)
              (%nuklear::a-min :float)
              (%nuklear::a-max :float)
              (%nuklear::segments :unsigned-int))

(declaim (inline %nuklear::draw-list-path-arc-to-fast))

(cffi:defcfun ("__claw__nk_draw_list_path_arc_to_fast"
               %nuklear::draw-list-path-arc-to-fast)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::center
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::radius :float)
              (%nuklear::a-min :int)
              (%nuklear::a-max :int))

(declaim (inline %nuklear::draw-list-path-clear))

(cffi:defcfun ("nk_draw_list_path_clear"
               %nuklear::draw-list-path-clear)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list))))

(declaim (inline %nuklear::draw-list-path-curve-to))

(cffi:defcfun ("__claw__nk_draw_list_path_curve_to"
               %nuklear::draw-list-path-curve-to)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::p2
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::p3
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::p4
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::num-segments :unsigned-int))

(declaim (inline %nuklear::draw-list-path-fill))

(cffi:defcfun ("__claw__nk_draw_list_path_fill"
               %nuklear::draw-list-path-fill)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::draw-list-path-line-to))

(cffi:defcfun ("__claw__nk_draw_list_path_line_to"
               %nuklear::draw-list-path-line-to)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::pos
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::draw-list-path-rect-to))

(cffi:defcfun ("__claw__nk_draw_list_path_rect_to"
               %nuklear::draw-list-path-rect-to)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::a
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::b
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::rounding :float))

(declaim (inline %nuklear::draw-list-path-stroke))

(cffi:defcfun ("__claw__nk_draw_list_path_stroke"
               %nuklear::draw-list-path-stroke)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::closed %nuklear::draw-list-stroke)
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-list-setup))

(cffi:defcfun ("nk_draw_list_setup" %nuklear::draw-list-setup)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::convert-config)))
              (%nuklear::cmds
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::vertices
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::elements
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::line-aa %nuklear::anti-aliasing)
              (%nuklear::shape-aa %nuklear::anti-aliasing))

(declaim (inline %nuklear::draw-list-stroke-circle))

(cffi:defcfun ("__claw__nk_draw_list_stroke_circle"
               %nuklear::draw-list-stroke-circle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::center
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::radius :float)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::segs :unsigned-int)
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-list-stroke-curve))

(cffi:defcfun ("__claw__nk_draw_list_stroke_curve"
               %nuklear::draw-list-stroke-curve)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::p0
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::cp0
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::cp1
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::p1
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg5
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::segments :unsigned-int)
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-list-stroke-line))

(cffi:defcfun ("__claw__nk_draw_list_stroke_line"
               %nuklear::draw-list-stroke-line)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::a
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::b
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-list-stroke-poly-line))

(cffi:defcfun ("__claw__nk_draw_list_stroke_poly_line"
               %nuklear::draw-list-stroke-poly-line)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::pnts
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::cnt :unsigned-int)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::arg4 %nuklear::draw-list-stroke)
              (%nuklear::thickness :float)
              (%nuklear::arg6 %nuklear::anti-aliasing))

(declaim (inline %nuklear::draw-list-stroke-rect))

(cffi:defcfun ("__claw__nk_draw_list_stroke_rect"
               %nuklear::draw-list-stroke-rect)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::rect
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rounding :float)
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-list-stroke-triangle))

(cffi:defcfun ("__claw__nk_draw_list_stroke_triangle"
               %nuklear::draw-list-stroke-triangle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-list)))
              (%nuklear::a
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::b
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::c
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::thickness :float))

(declaim (inline %nuklear::draw-text))

(cffi:defcfun ("__claw__nk_draw_text" %nuklear::draw-text)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::text claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::arg4
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font)))
              (%nuklear::arg5
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::arg6
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::edit-buffer))

(cffi:defcfun ("nk_edit_buffer" %nuklear::edit-buffer)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::flags)
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::arg3 %nuklear::plugin-filter))

(declaim (inline %nuklear::edit-focus))

(cffi:defcfun ("nk_edit_focus" %nuklear::edit-focus)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::flags %nuklear::flags))

(declaim (inline %nuklear::edit-string))

(cffi:defcfun ("nk_edit_string" %nuklear::edit-string)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::flags)
              (%nuklear::buffer claw-utils:claw-string)
              (%nuklear::len (claw-utils:claw-pointer :int))
              (%nuklear::max :int)
              (%nuklear::arg5 %nuklear::plugin-filter))

(declaim (inline %nuklear::edit-string-zero-terminated))

(cffi:defcfun ("nk_edit_string_zero_terminated"
               %nuklear::edit-string-zero-terminated)
              %nuklear::flags
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::flags)
              (%nuklear::buffer claw-utils:claw-string)
              (%nuklear::max :int)
              (%nuklear::arg4 %nuklear::plugin-filter))

(declaim (inline %nuklear::edit-unfocus))

(cffi:defcfun ("nk_edit_unfocus" %nuklear::edit-unfocus)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::end))

(cffi:defcfun ("nk_end" %nuklear::end)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::fill-arc))

(cffi:defcfun ("__claw__nk_fill_arc" %nuklear::fill-arc)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::cx :float)
              (%nuklear::cy :float)
              (%nuklear::radius :float)
              (%nuklear::a-min :float)
              (%nuklear::a-max :float)
              (%nuklear::arg6
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::fill-circle))

(cffi:defcfun ("__claw__nk_fill_circle" %nuklear::fill-circle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::fill-polygon))

(cffi:defcfun ("__claw__nk_fill_polygon" %nuklear::fill-polygon)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1 (claw-utils:claw-pointer :float))
              (%nuklear::point-count :int)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::fill-rect))

(cffi:defcfun ("__claw__nk_fill_rect" %nuklear::fill-rect)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::rounding :float)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::fill-rect-multi-color))

(cffi:defcfun ("__claw__nk_fill_rect_multi_color"
               %nuklear::fill-rect-multi-color)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::left
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::top
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::right
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::bottom
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::fill-triangle))

(cffi:defcfun ("__claw__nk_fill_triangle" %nuklear::fill-triangle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::x0 :float)
              (%nuklear::y0 :float)
              (%nuklear::x1 :float)
              (%nuklear::y1 :float)
              (%nuklear::x2 :float)
              (%nuklear::y2 :float)
              (%nuklear::arg7
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::filter-ascii))

(cffi:defcfun ("nk_filter_ascii" %nuklear::filter-ascii)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-binary))

(cffi:defcfun ("nk_filter_binary" %nuklear::filter-binary)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-decimal))

(cffi:defcfun ("nk_filter_decimal" %nuklear::filter-decimal)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-default))

(cffi:defcfun ("nk_filter_default" %nuklear::filter-default)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-float))

(cffi:defcfun ("nk_filter_float" %nuklear::filter-float)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-hex))

(cffi:defcfun ("nk_filter_hex" %nuklear::filter-hex)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::filter-oct))

(cffi:defcfun ("nk_filter_oct" %nuklear::filter-oct)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::unicode %nuklear::rune))

(cffi:defcstruct (%nuklear::font :size 128))

(cffi:defcstruct (%nuklear::baked-font :size 32)
                 (%nuklear::height :float :offset 0)
                 (%nuklear::ascent :float :offset 4)
                 (%nuklear::descent :float :offset 8)
                 (%nuklear::glyph-offset %nuklear::rune :offset 12)
                 (%nuklear::glyph-count %nuklear::rune :offset 16)
                 (%nuklear::ranges
                  (claw-utils:claw-pointer %nuklear::rune) :offset
                  24))

(cffi:defcstruct (%nuklear::font-glyph :size 48)
                 (%nuklear::codepoint %nuklear::rune :offset 0)
                 (%nuklear::xadvance :float :offset 4)
                 (%nuklear::x0 :float :offset 8)
                 (%nuklear::y0 :float :offset 12)
                 (%nuklear::x1 :float :offset 16)
                 (%nuklear::y1 :float :offset 20)
                 (%nuklear::w :float :offset 24)
                 (%nuklear::h :float :offset 28)
                 (%nuklear::u0 :float :offset 32)
                 (%nuklear::v0 :float :offset 36)
                 (%nuklear::u1 :float :offset 40)
                 (%nuklear::v1 :float :offset 44))

(cffi:defcstruct (%nuklear::font-config :size 88))

(cffi:defcstruct (%nuklear::font-config :size 88)
                 (%nuklear::next
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-config))
                  :offset 0)
                 (%nuklear::ttf-blob (claw-utils:claw-pointer :void)
                  :offset 8)
                 (%nuklear::ttf-size %nuklear::size :offset 16)
                 (%nuklear::ttf-data-owned-by-atlas :unsigned-char
                  :offset 24)
                 (%nuklear::merge-mode :unsigned-char :offset 25)
                 (%nuklear::pixel-snap :unsigned-char :offset 26)
                 (%nuklear::oversample-v :unsigned-char :offset 27)
                 (%nuklear::oversample-h :unsigned-char :offset 28)
                 (%nuklear::padding :unsigned-char :count 3 :offset
                  29)
                 (%nuklear::size :float :offset 32)
                 (%nuklear::coord-type %nuklear::font-coord-type
                  :offset 36)
                 (%nuklear::spacing (:struct %nuklear::vec2) :offset
                  40)
                 (%nuklear::range
                  (claw-utils:claw-pointer %nuklear::rune) :offset
                  48)
                 (%nuklear::font
                  (claw-utils:claw-pointer
                   (:struct %nuklear::baked-font))
                  :offset 56)
                 (%nuklear::fallback-glyph %nuklear::rune :offset 64)
                 (%nuklear::n
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-config))
                  :offset 72)
                 (%nuklear::p
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-config))
                  :offset 80))

(cffi:defcstruct (%nuklear::font :size 128)
                 (%nuklear::next
                  (claw-utils:claw-pointer (:struct %nuklear::font))
                  :offset 0)
                 (%nuklear::handle (:struct %nuklear::user-font)
                  :offset 8)
                 (%nuklear::info (:struct %nuklear::baked-font)
                  :offset 48)
                 (%nuklear::scale :float :offset 80)
                 (%nuklear::glyphs
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-glyph))
                  :offset 88)
                 (%nuklear::fallback
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-glyph))
                  :offset 96)
                 (%nuklear::fallback-codepoint %nuklear::rune :offset
                  104)
                 (%nuklear::texture %nuklear::handle :offset 112)
                 (%nuklear::config
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-config))
                  :offset 120))

(cffi:defcstruct (%nuklear::recti :size 8)
                 (%nuklear::x :short :offset 0)
                 (%nuklear::y :short :offset 2)
                 (%nuklear::w :short :offset 4)
                 (%nuklear::h :short :offset 6))

(cffi:defcstruct (%nuklear::font-atlas :size 400)
                 (%nuklear::pixel (claw-utils:claw-pointer :void)
                  :offset 0)
                 (%nuklear::tex-width :int :offset 8)
                 (%nuklear::tex-height :int :offset 12)
                 (%nuklear::permanent (:struct %nuklear::allocator)
                  :offset 16)
                 (%nuklear::temporary (:struct %nuklear::allocator)
                  :offset 40)
                 (%nuklear::custom (:struct %nuklear::recti) :offset
                  64)
                 (%nuklear::cursors (:struct %nuklear::cursor) :count
                  7 :offset 72)
                 (%nuklear::glyph-count :int :offset 352)
                 (%nuklear::glyphs
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-glyph))
                  :offset 360)
                 (%nuklear::default-font
                  (claw-utils:claw-pointer (:struct %nuklear::font))
                  :offset 368)
                 (%nuklear::fonts
                  (claw-utils:claw-pointer (:struct %nuklear::font))
                  :offset 376)
                 (%nuklear::config
                  (claw-utils:claw-pointer
                   (:struct %nuklear::font-config))
                  :offset 384)
                 (%nuklear::font-num :int :offset 392))

(declaim (inline %nuklear::font-atlas-add))

(cffi:defcfun ("nk_font_atlas_add" %nuklear::font-atlas-add)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-add-compressed))

(cffi:defcfun ("nk_font_atlas_add_compressed"
               %nuklear::font-atlas-add-compressed)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size)
              (%nuklear::height :float)
              (%nuklear::arg4
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-add-compressed-base85))

(cffi:defcfun ("nk_font_atlas_add_compressed_base85"
               %nuklear::font-atlas-add-compressed-base85)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::data claw-utils:claw-string)
              (%nuklear::height :float)
              (%nuklear::config
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-add-default))

(cffi:defcfun ("nk_font_atlas_add_default"
               %nuklear::font-atlas-add-default)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::height :float)
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-add-from-file))

(cffi:defcfun ("nk_font_atlas_add_from_file"
               %nuklear::font-atlas-add-from-file)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::atlas
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::file-path claw-utils:claw-string)
              (%nuklear::height :float)
              (%nuklear::arg3
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-add-from-memory))

(cffi:defcfun ("nk_font_atlas_add_from_memory"
               %nuklear::font-atlas-add-from-memory)
              (claw-utils:claw-pointer (:struct %nuklear::font))
              (%nuklear::atlas
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size)
              (%nuklear::height :float)
              (%nuklear::config
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config))))

(declaim (inline %nuklear::font-atlas-bake))

(cffi:defcfun ("nk_font_atlas_bake" %nuklear::font-atlas-bake)
              (claw-utils:claw-pointer :void)
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::width (claw-utils:claw-pointer :int))
              (%nuklear::height (claw-utils:claw-pointer :int))
              (%nuklear::arg3 %nuklear::font-atlas-format))

(declaim (inline %nuklear::font-atlas-begin))

(cffi:defcfun ("nk_font_atlas_begin" %nuklear::font-atlas-begin)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas))))

(declaim (inline %nuklear::font-atlas-cleanup))

(cffi:defcfun ("nk_font_atlas_cleanup" %nuklear::font-atlas-cleanup)
              :void
              (%nuklear::atlas
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas))))

(declaim (inline %nuklear::font-atlas-clear))

(cffi:defcfun ("nk_font_atlas_clear" %nuklear::font-atlas-clear)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas))))

(declaim (inline %nuklear::font-atlas-end))

(cffi:defcfun ("__claw__nk_font_atlas_end" %nuklear::font-atlas-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::tex
               (claw-utils:claw-pointer %nuklear::handle))
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::draw-null-texture))))

(declaim (inline %nuklear::font-atlas-init))

(cffi:defcfun ("nk_font_atlas_init" %nuklear::font-atlas-init)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator))))

(declaim (inline %nuklear::font-atlas-init-custom))

(cffi:defcfun ("nk_font_atlas_init_custom"
               %nuklear::font-atlas-init-custom)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas)))
              (%nuklear::persistent
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator)))
              (%nuklear::transient
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator))))

(declaim (inline %nuklear::font-atlas-init-default))

(cffi:defcfun ("nk_font_atlas_init_default"
               %nuklear::font-atlas-init-default)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::font-atlas))))

(declaim (inline %nuklear::font-chinese-glyph-ranges))

(cffi:defcfun ("nk_font_chinese_glyph_ranges"
               %nuklear::font-chinese-glyph-ranges)
              (claw-utils:claw-pointer %nuklear::rune))

(declaim (inline %nuklear::font-config))

(cffi:defcfun ("__claw__nk_font_config" %nuklear::font-config)
              (claw-utils:claw-pointer
               (:struct %nuklear::font-config))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer
                (:struct %nuklear::font-config)))
              (%nuklear::pixel-height :float))

(declaim (inline %nuklear::font-cyrillic-glyph-ranges))

(cffi:defcfun ("nk_font_cyrillic_glyph_ranges"
               %nuklear::font-cyrillic-glyph-ranges)
              (claw-utils:claw-pointer %nuklear::rune))

(declaim (inline %nuklear::font-default-glyph-ranges))

(cffi:defcfun ("nk_font_default_glyph_ranges"
               %nuklear::font-default-glyph-ranges)
              (claw-utils:claw-pointer %nuklear::rune))

(declaim (inline %nuklear::font-find-glyph))

(cffi:defcfun ("nk_font_find_glyph" %nuklear::font-find-glyph)
              (claw-utils:claw-pointer
               (:struct %nuklear::font-glyph))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::font)))
              (%nuklear::unicode %nuklear::rune))

(declaim (inline %nuklear::font-korean-glyph-ranges))

(cffi:defcfun ("nk_font_korean_glyph_ranges"
               %nuklear::font-korean-glyph-ranges)
              (claw-utils:claw-pointer %nuklear::rune))

(declaim (inline %nuklear::free))

(cffi:defcfun ("nk_free" %nuklear::free)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::get-null-rect))

(cffi:defcfun ("__claw__nk_get_null_rect" %nuklear::get-null-rect)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::group-begin))

(cffi:defcfun ("nk_group_begin" %nuklear::group-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::flags))

(declaim (inline %nuklear::group-begin-titled))

(cffi:defcfun ("nk_group_begin_titled" %nuklear::group-begin-titled)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::arg3 %nuklear::flags))

(declaim (inline %nuklear::group-end))

(cffi:defcfun ("nk_group_end" %nuklear::group-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::group-get-scroll))

(cffi:defcfun ("nk_group_get_scroll" %nuklear::group-get-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::id claw-utils:claw-string)
              (%nuklear::x-offset
               (claw-utils:claw-pointer %nuklear::uint))
              (%nuklear::y-offset
               (claw-utils:claw-pointer %nuklear::uint)))

(declaim (inline %nuklear::group-scrolled-begin))

(cffi:defcfun ("nk_group_scrolled_begin"
               %nuklear::group-scrolled-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::off
               (claw-utils:claw-pointer (:struct %nuklear::scroll)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::arg3 %nuklear::flags))

(declaim (inline %nuklear::group-scrolled-end))

(cffi:defcfun ("nk_group_scrolled_end" %nuklear::group-scrolled-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::group-scrolled-offset-begin))

(cffi:defcfun ("nk_group_scrolled_offset_begin"
               %nuklear::group-scrolled-offset-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::x-offset
               (claw-utils:claw-pointer %nuklear::uint))
              (%nuklear::y-offset
               (claw-utils:claw-pointer %nuklear::uint))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::flags %nuklear::flags))

(declaim (inline %nuklear::group-set-scroll))

(cffi:defcfun ("nk_group_set_scroll" %nuklear::group-set-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::id claw-utils:claw-string)
              (%nuklear::x-offset %nuklear::uint)
              (%nuklear::y-offset %nuklear::uint))

(declaim (inline %nuklear::handle-id))

(cffi:defcfun ("__claw__nk_handle_id" %nuklear::handle-id)
              (claw-utils:claw-pointer %nuklear::handle)
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer %nuklear::handle))
              (%nuklear::arg0 :int))

(declaim (inline %nuklear::handle-ptr))

(cffi:defcfun ("__claw__nk_handle_ptr" %nuklear::handle-ptr)
              (claw-utils:claw-pointer %nuklear::handle)
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer %nuklear::handle))
              (%nuklear::arg0 (claw-utils:claw-pointer :void)))

(declaim (inline %nuklear::hsv))

(cffi:defcfun ("__claw__nk_hsv" %nuklear::hsv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::h :int)
              (%nuklear::s :int)
              (%nuklear::v :int))

(declaim (inline %nuklear::hsv-bv))

(cffi:defcfun ("__claw__nk_hsv_bv" %nuklear::hsv-bv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsv
               (claw-utils:claw-pointer %nuklear::byte)))

(declaim (inline %nuklear::hsv-f))

(cffi:defcfun ("__claw__nk_hsv_f" %nuklear::hsv-f)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::h :float)
              (%nuklear::s :float)
              (%nuklear::v :float))

(declaim (inline %nuklear::hsv-fv))

(cffi:defcfun ("__claw__nk_hsv_fv" %nuklear::hsv-fv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsv (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::hsv-iv))

(cffi:defcfun ("__claw__nk_hsv_iv" %nuklear::hsv-iv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsv (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::hsva))

(cffi:defcfun ("__claw__nk_hsva" %nuklear::hsva)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::h :int)
              (%nuklear::s :int)
              (%nuklear::v :int)
              (%nuklear::a :int))

(declaim (inline %nuklear::hsva-bv))

(cffi:defcfun ("__claw__nk_hsva_bv" %nuklear::hsva-bv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsva
               (claw-utils:claw-pointer %nuklear::byte)))

(declaim (inline %nuklear::hsva-colorf))

(cffi:defcfun ("__claw__nk_hsva_colorf" %nuklear::hsva-colorf)
              (claw-utils:claw-pointer (:struct %nuklear::colorf))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::h :float)
              (%nuklear::s :float)
              (%nuklear::v :float)
              (%nuklear::a :float))

(declaim (inline %nuklear::hsva-colorfv))

(cffi:defcfun ("__claw__nk_hsva_colorfv" %nuklear::hsva-colorfv)
              (claw-utils:claw-pointer (:struct %nuklear::colorf))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::colorf)))
              (%nuklear::c (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::hsva-f))

(cffi:defcfun ("__claw__nk_hsva_f" %nuklear::hsva-f)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::h :float)
              (%nuklear::s :float)
              (%nuklear::v :float)
              (%nuklear::a :float))

(declaim (inline %nuklear::hsva-fv))

(cffi:defcfun ("__claw__nk_hsva_fv" %nuklear::hsva-fv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsva (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::hsva-iv))

(cffi:defcfun ("__claw__nk_hsva_iv" %nuklear::hsva-iv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::hsva (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::image))

(cffi:defcfun ("__claw__nk_image" %nuklear::image)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image))))

(declaim (inline %nuklear::image-color))

(cffi:defcfun ("__claw__nk_image_color" %nuklear::image-color)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::image-handle))

(cffi:defcfun ("__claw__nk_image_handle" %nuklear::image-handle)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0
               (claw-utils:claw-pointer %nuklear::handle)))

(declaim (inline %nuklear::image-id))

(cffi:defcfun ("__claw__nk_image_id" %nuklear::image-id)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0 :int))

(declaim (inline %nuklear::image-is-subimage))

(cffi:defcfun ("nk_image_is_subimage" %nuklear::image-is-subimage)
              :int
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image))))

(declaim (inline %nuklear::image-ptr))

(cffi:defcfun ("__claw__nk_image_ptr" %nuklear::image-ptr)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0 (claw-utils:claw-pointer :void)))

(declaim (inline %nuklear::init))

(cffi:defcfun ("nk_init" %nuklear::init)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator)))
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::init-custom))

(cffi:defcfun ("nk_init_custom" %nuklear::init-custom)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::cmds
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::pool
               (claw-utils:claw-pointer (:struct %nuklear::buffer)))
              (%nuklear::arg3
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::init-default))

(cffi:defcfun ("nk_init_default" %nuklear::init-default)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::init-fixed))

(cffi:defcfun ("nk_init_fixed" %nuklear::init-fixed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size)
              (%nuklear::arg3
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::input-any-mouse-click-in-rect))

(cffi:defcfun ("__claw__nk_input_any_mouse_click_in_rect"
               %nuklear::input-any-mouse-click-in-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-begin))

(cffi:defcfun ("nk_input_begin" %nuklear::input-begin)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::input-button))

(cffi:defcfun ("nk_input_button" %nuklear::input-button)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::x :int)
              (%nuklear::y :int)
              (%nuklear::down :int))

(declaim (inline %nuklear::input-char))

(cffi:defcfun ("nk_input_char" %nuklear::input-char)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 :char))

(declaim (inline %nuklear::input-end))

(cffi:defcfun ("nk_input_end" %nuklear::input-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(cffi:defctype %nuklear::glyph claw-utils:claw-string)

(declaim (inline %nuklear::input-glyph))

(cffi:defcfun ("nk_input_glyph" %nuklear::input-glyph)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::glyph))

(declaim (inline %nuklear::input-has-mouse-click))

(cffi:defcfun ("nk_input_has_mouse_click"
               %nuklear::input-has-mouse-click)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons))

(declaim (inline %nuklear::input-has-mouse-click-down-in-rect))

(cffi:defcfun ("__claw__nk_input_has_mouse_click_down_in_rect"
               %nuklear::input-has-mouse-click-down-in-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::down :int))

(declaim (inline %nuklear::input-has-mouse-click-in-rect))

(cffi:defcfun ("__claw__nk_input_has_mouse_click_in_rect"
               %nuklear::input-has-mouse-click-in-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-is-key-down))

(cffi:defcfun ("nk_input_is_key_down" %nuklear::input-is-key-down)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::keys))

(declaim (inline %nuklear::input-is-key-pressed))

(cffi:defcfun ("nk_input_is_key_pressed"
               %nuklear::input-is-key-pressed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::keys))

(declaim (inline %nuklear::input-is-key-released))

(cffi:defcfun ("nk_input_is_key_released"
               %nuklear::input-is-key-released)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::keys))

(declaim (inline %nuklear::input-is-mouse-click-down-in-rect))

(cffi:defcfun ("__claw__nk_input_is_mouse_click_down_in_rect"
               %nuklear::input-is-mouse-click-down-in-rect)
              :int
              (%nuklear::i
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::id %nuklear::buttons)
              (%nuklear::b
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::down :int))

(declaim (inline %nuklear::input-is-mouse-click-in-rect))

(cffi:defcfun ("__claw__nk_input_is_mouse_click_in_rect"
               %nuklear::input-is-mouse-click-in-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-is-mouse-down))

(cffi:defcfun ("nk_input_is_mouse_down"
               %nuklear::input-is-mouse-down)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons))

(declaim (inline %nuklear::input-is-mouse-hovering-rect))

(cffi:defcfun ("__claw__nk_input_is_mouse_hovering_rect"
               %nuklear::input-is-mouse-hovering-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-is-mouse-pressed))

(cffi:defcfun ("nk_input_is_mouse_pressed"
               %nuklear::input-is-mouse-pressed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons))

(declaim (inline %nuklear::input-is-mouse-prev-hovering-rect))

(cffi:defcfun ("__claw__nk_input_is_mouse_prev_hovering_rect"
               %nuklear::input-is-mouse-prev-hovering-rect)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-is-mouse-released))

(cffi:defcfun ("nk_input_is_mouse_released"
               %nuklear::input-is-mouse-released)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons))

(declaim (inline %nuklear::input-key))

(cffi:defcfun ("nk_input_key" %nuklear::input-key)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::keys)
              (%nuklear::down :int))

(declaim (inline %nuklear::input-motion))

(cffi:defcfun ("nk_input_motion" %nuklear::input-motion)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::x :int)
              (%nuklear::y :int))

(declaim (inline %nuklear::input-mouse-clicked))

(cffi:defcfun ("__claw__nk_input_mouse_clicked"
               %nuklear::input-mouse-clicked)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::input)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::input-scroll))

(cffi:defcfun ("__claw__nk_input_scroll" %nuklear::input-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::val
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::input-unicode))

(cffi:defcfun ("nk_input_unicode" %nuklear::input-unicode)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::rune))

(declaim (inline %nuklear::item-is-any-active))

(cffi:defcfun ("nk_item_is_any_active" %nuklear::item-is-any-active)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::label))

(cffi:defcfun ("nk_label" %nuklear::label)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags))

(declaim (inline %nuklear::label-colored))

(cffi:defcfun ("__claw__nk_label_colored" %nuklear::label-colored)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::label-colored-wrap))

(cffi:defcfun ("__claw__nk_label_colored_wrap"
               %nuklear::label-colored-wrap)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::label-wrap))

(cffi:defcfun ("nk_label_wrap" %nuklear::label-wrap)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::layout-ratio-from-pixel))

(cffi:defcfun ("nk_layout_ratio_from_pixel"
               %nuklear::layout-ratio-from-pixel)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::pixel-width :float))

(declaim (inline %nuklear::layout-reset-min-row-height))

(cffi:defcfun ("nk_layout_reset_min_row_height"
               %nuklear::layout-reset-min-row-height)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-row))

(cffi:defcfun ("nk_layout_row" %nuklear::layout-row)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::layout-format)
              (%nuklear::height :float)
              (%nuklear::cols :int)
              (%nuklear::ratio (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::layout-row-begin))

(cffi:defcfun ("nk_layout_row_begin" %nuklear::layout-row-begin)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::fmt %nuklear::layout-format)
              (%nuklear::row-height :float)
              (%nuklear::cols :int))

(declaim (inline %nuklear::layout-row-dynamic))

(cffi:defcfun ("nk_layout_row_dynamic" %nuklear::layout-row-dynamic)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::height :float)
              (%nuklear::cols :int))

(declaim (inline %nuklear::layout-row-end))

(cffi:defcfun ("nk_layout_row_end" %nuklear::layout-row-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-row-push))

(cffi:defcfun ("nk_layout_row_push" %nuklear::layout-row-push)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::value :float))

(declaim (inline %nuklear::layout-row-static))

(cffi:defcfun ("nk_layout_row_static" %nuklear::layout-row-static)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::height :float)
              (%nuklear::item-width :int)
              (%nuklear::cols :int))

(declaim (inline %nuklear::layout-row-template-begin))

(cffi:defcfun ("nk_layout_row_template_begin"
               %nuklear::layout-row-template-begin)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::row-height :float))

(declaim (inline %nuklear::layout-row-template-end))

(cffi:defcfun ("nk_layout_row_template_end"
               %nuklear::layout-row-template-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-row-template-push-dynamic))

(cffi:defcfun ("nk_layout_row_template_push_dynamic"
               %nuklear::layout-row-template-push-dynamic)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-row-template-push-static))

(cffi:defcfun ("nk_layout_row_template_push_static"
               %nuklear::layout-row-template-push-static)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::width :float))

(declaim (inline %nuklear::layout-row-template-push-variable))

(cffi:defcfun ("nk_layout_row_template_push_variable"
               %nuklear::layout-row-template-push-variable)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::min-width :float))

(declaim (inline %nuklear::layout-set-min-row-height))

(cffi:defcfun ("nk_layout_set_min_row_height"
               %nuklear::layout-set-min-row-height)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::height :float))

(declaim (inline %nuklear::layout-space-begin))

(cffi:defcfun ("nk_layout_space_begin" %nuklear::layout-space-begin)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::layout-format)
              (%nuklear::height :float)
              (%nuklear::widget-count :int))

(declaim (inline %nuklear::layout-space-bounds))

(cffi:defcfun ("__claw__nk_layout_space_bounds"
               %nuklear::layout-space-bounds)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-space-end))

(cffi:defcfun ("nk_layout_space_end" %nuklear::layout-space-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::layout-space-push))

(cffi:defcfun ("__claw__nk_layout_space_push"
               %nuklear::layout-space-push)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::layout-space-rect-to-local))

(cffi:defcfun ("__claw__nk_layout_space_rect_to_local"
               %nuklear::layout-space-rect-to-local)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::layout-space-rect-to-screen))

(cffi:defcfun ("__claw__nk_layout_space_rect_to_screen"
               %nuklear::layout-space-rect-to-screen)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::layout-space-to-local))

(cffi:defcfun ("__claw__nk_layout_space_to_local"
               %nuklear::layout-space-to-local)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::layout-space-to-screen))

(cffi:defcfun ("__claw__nk_layout_space_to_screen"
               %nuklear::layout-space-to-screen)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::layout-widget-bounds))

(cffi:defcfun ("__claw__nk_layout_widget_bounds"
               %nuklear::layout-widget-bounds)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(cffi:defcstruct (%nuklear::list-view :size 40)
                 (%nuklear::begin :int :offset 0)
                 (%nuklear::end :int :offset 4)
                 (%nuklear::count :int :offset 8)
                 (%nuklear::total-height :int :offset 12)
                 (%nuklear::ctx
                  (claw-utils:claw-pointer
                   (:struct %nuklear::context))
                  :offset 16)
                 (%nuklear::scroll-pointer
                  (claw-utils:claw-pointer %nuklear::uint) :offset
                  24)
                 (%nuklear::scroll-value %nuklear::uint :offset 32))

(declaim (inline %nuklear::list-view-begin))

(cffi:defcfun ("nk_list_view_begin" %nuklear::list-view-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::out
               (claw-utils:claw-pointer
                (:struct %nuklear::list-view)))
              (%nuklear::id claw-utils:claw-string)
              (%nuklear::arg3 %nuklear::flags)
              (%nuklear::row-height :int)
              (%nuklear::row-count :int))

(declaim (inline %nuklear::list-view-end))

(cffi:defcfun ("nk_list_view_end" %nuklear::list-view-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::list-view))))

(declaim (inline %nuklear::menu-begin-image))

(cffi:defcfun ("__claw__nk_menu_begin_image"
               %nuklear::menu-begin-image)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-image-label))

(cffi:defcfun ("__claw__nk_menu_begin_image_label"
               %nuklear::menu-begin-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-image-text))

(cffi:defcfun ("__claw__nk_menu_begin_image_text"
               %nuklear::menu-begin-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-label))

(cffi:defcfun ("__claw__nk_menu_begin_label"
               %nuklear::menu-begin-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-symbol))

(cffi:defcfun ("__claw__nk_menu_begin_symbol"
               %nuklear::menu-begin-symbol)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-symbol-label))

(cffi:defcfun ("__claw__nk_menu_begin_symbol_label"
               %nuklear::menu-begin-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::arg3 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-symbol-text))

(cffi:defcfun ("__claw__nk_menu_begin_symbol_text"
               %nuklear::menu-begin-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::arg4 %nuklear::symbol-type)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-begin-text))

(cffi:defcfun ("__claw__nk_menu_begin_text"
               %nuklear::menu-begin-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::title-len :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::menu-close))

(cffi:defcfun ("nk_menu_close" %nuklear::menu-close)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::menu-end))

(cffi:defcfun ("nk_menu_end" %nuklear::menu-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::menu-item-image-label))

(cffi:defcfun ("__claw__nk_menu_item_image_label"
               %nuklear::menu-item-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::menu-item-image-text))

(cffi:defcfun ("__claw__nk_menu_item_image_text"
               %nuklear::menu-item-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::menu-item-label))

(cffi:defcfun ("nk_menu_item_label" %nuklear::menu-item-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::menu-item-symbol-label))

(cffi:defcfun ("nk_menu_item_symbol_label"
               %nuklear::menu-item-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::menu-item-symbol-text))

(cffi:defcfun ("nk_menu_item_symbol_text"
               %nuklear::menu-item-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::alignment %nuklear::flags))

(declaim (inline %nuklear::menu-item-text))

(cffi:defcfun ("nk_menu_item_text" %nuklear::menu-item-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags))

(declaim (inline %nuklear::menubar-begin))

(cffi:defcfun ("nk_menubar_begin" %nuklear::menubar-begin)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::menubar-end))

(cffi:defcfun ("nk_menubar_end" %nuklear::menubar-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::murmur-hash))

(cffi:defcfun ("nk_murmur_hash" %nuklear::murmur-hash)
              %nuklear::hash
              (%nuklear::key (claw-utils:claw-pointer :void))
              (%nuklear::len :int)
              (%nuklear::seed %nuklear::hash))

(declaim (inline %nuklear::option-label))

(cffi:defcfun ("nk_option_label" %nuklear::option-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::active :int))

(declaim (inline %nuklear::option-text))

(cffi:defcfun ("nk_option_text" %nuklear::option-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::active :int))

(declaim (inline %nuklear::plot))

(cffi:defcfun ("nk_plot" %nuklear::plot)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::values (claw-utils:claw-pointer :float))
              (%nuklear::count :int)
              (%nuklear::offset :int))

(declaim (inline %nuklear::plot-function))

(cffi:defcfun ("nk_plot_function" %nuklear::plot-function)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::chart-type)
              (%nuklear::userdata (claw-utils:claw-pointer :void))
              (%nuklear::value-getter
               (claw-utils:claw-pointer :void))
              (%nuklear::count :int)
              (%nuklear::offset :int))

(declaim (inline %nuklear::popup-begin))

(cffi:defcfun ("__claw__nk_popup_begin" %nuklear::popup-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::popup-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 %nuklear::flags)
              (%nuklear::bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::popup-close))

(cffi:defcfun ("nk_popup_close" %nuklear::popup-close)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::popup-end))

(cffi:defcfun ("nk_popup_end" %nuklear::popup-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::popup-get-scroll))

(cffi:defcfun ("nk_popup_get_scroll" %nuklear::popup-get-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::offset-x
               (claw-utils:claw-pointer %nuklear::uint))
              (%nuklear::offset-y
               (claw-utils:claw-pointer %nuklear::uint)))

(declaim (inline %nuklear::popup-set-scroll))

(cffi:defcfun ("nk_popup_set_scroll" %nuklear::popup-set-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::offset-x %nuklear::uint)
              (%nuklear::offset-y %nuklear::uint))

(declaim (inline %nuklear::prog))

(cffi:defcfun ("nk_prog" %nuklear::prog)
              %nuklear::size
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::cur %nuklear::size)
              (%nuklear::max %nuklear::size)
              (%nuklear::modifyable :int))

(declaim (inline %nuklear::progress))

(cffi:defcfun ("nk_progress" %nuklear::progress)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::cur
               (claw-utils:claw-pointer %nuklear::size))
              (%nuklear::max %nuklear::size)
              (%nuklear::modifyable :int))

(declaim (inline %nuklear::property-double))

(cffi:defcfun ("nk_property_double" %nuklear::property-double)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :double)
              (%nuklear::val (claw-utils:claw-pointer :double))
              (%nuklear::max :double)
              (%nuklear::step :double)
              (%nuklear::inc-per-pixel :float))

(declaim (inline %nuklear::property-float))

(cffi:defcfun ("nk_property_float" %nuklear::property-float)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :float)
              (%nuklear::val (claw-utils:claw-pointer :float))
              (%nuklear::max :float)
              (%nuklear::step :float)
              (%nuklear::inc-per-pixel :float))

(declaim (inline %nuklear::property-int))

(cffi:defcfun ("nk_property_int" %nuklear::property-int)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :int)
              (%nuklear::val (claw-utils:claw-pointer :int))
              (%nuklear::max :int)
              (%nuklear::step :int)
              (%nuklear::inc-per-pixel :float))

(declaim (inline %nuklear::propertyd))

(cffi:defcfun ("nk_propertyd" %nuklear::propertyd)
              :double
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :double)
              (%nuklear::val :double)
              (%nuklear::max :double)
              (%nuklear::step :double)
              (%nuklear::inc-per-pixel :float))

(declaim (inline %nuklear::propertyf))

(cffi:defcfun ("nk_propertyf" %nuklear::propertyf)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :float)
              (%nuklear::val :float)
              (%nuklear::max :float)
              (%nuklear::step :float)
              (%nuklear::inc-per-pixel :float))

(declaim (inline %nuklear::propertyi))

(cffi:defcfun ("nk_propertyi" %nuklear::propertyi)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::min :int)
              (%nuklear::val :int)
              (%nuklear::max :int)
              (%nuklear::step :int)
              (%nuklear::inc-per-pixel :float))

(cffi:defctype %nuklear::command-custom-callback
               (claw-utils:claw-pointer :void))

(declaim (inline %nuklear::push-custom))

(cffi:defcfun ("__claw__nk_push_custom" %nuklear::push-custom)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg2 %nuklear::command-custom-callback)
              (%nuklear::usr
               (claw-utils:claw-pointer %nuklear::handle)))

(declaim (inline %nuklear::push-scissor))

(cffi:defcfun ("__claw__nk_push_scissor" %nuklear::push-scissor)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::radio-label))

(cffi:defcfun ("nk_radio_label" %nuklear::radio-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::active (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::radio-text))

(cffi:defcfun ("nk_radio_text" %nuklear::radio-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::active (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::rect))

(cffi:defcfun ("__claw__nk_rect" %nuklear::rect)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::x :float)
              (%nuklear::y :float)
              (%nuklear::w :float)
              (%nuklear::h :float))

(declaim (inline %nuklear::rect-pos))

(cffi:defcfun ("__claw__nk_rect_pos" %nuklear::rect-pos)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::rect-size))

(cffi:defcfun ("__claw__nk_rect_size" %nuklear::rect-size)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::recta))

(cffi:defcfun ("__claw__nk_recta" %nuklear::recta)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::pos
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::size
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::recti))

(cffi:defcfun ("__claw__nk_recti" %nuklear::recti)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::x :int)
              (%nuklear::y :int)
              (%nuklear::w :int)
              (%nuklear::h :int))

(declaim (inline %nuklear::rectiv))

(cffi:defcfun ("__claw__nk_rectiv" %nuklear::rectiv)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::xywh (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::rectv))

(cffi:defcfun ("__claw__nk_rectv" %nuklear::rectv)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::xywh (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::rgb))

(cffi:defcfun ("__claw__nk_rgb" %nuklear::rgb)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::r :int)
              (%nuklear::g :int)
              (%nuklear::b :int))

(declaim (inline %nuklear::rgb-bv))

(cffi:defcfun ("__claw__nk_rgb_bv" %nuklear::rgb-bv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgb
               (claw-utils:claw-pointer %nuklear::byte)))

(declaim (inline %nuklear::rgb-cf))

(cffi:defcfun ("__claw__nk_rgb_cf" %nuklear::rgb-cf)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::c
               (claw-utils:claw-pointer (:struct %nuklear::colorf))))

(declaim (inline %nuklear::rgb-f))

(cffi:defcfun ("__claw__nk_rgb_f" %nuklear::rgb-f)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::r :float)
              (%nuklear::g :float)
              (%nuklear::b :float))

(declaim (inline %nuklear::rgb-fv))

(cffi:defcfun ("__claw__nk_rgb_fv" %nuklear::rgb-fv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgb (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::rgb-hex))

(cffi:defcfun ("__claw__nk_rgb_hex" %nuklear::rgb-hex)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgb claw-utils:claw-string))

(declaim (inline %nuklear::rgb-iv))

(cffi:defcfun ("__claw__nk_rgb_iv" %nuklear::rgb-iv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgb (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::rgba))

(cffi:defcfun ("__claw__nk_rgba" %nuklear::rgba)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::r :int)
              (%nuklear::g :int)
              (%nuklear::b :int)
              (%nuklear::a :int))

(declaim (inline %nuklear::rgba-bv))

(cffi:defcfun ("__claw__nk_rgba_bv" %nuklear::rgba-bv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgba
               (claw-utils:claw-pointer %nuklear::byte)))

(declaim (inline %nuklear::rgba-cf))

(cffi:defcfun ("__claw__nk_rgba_cf" %nuklear::rgba-cf)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::c
               (claw-utils:claw-pointer (:struct %nuklear::colorf))))

(declaim (inline %nuklear::rgba-f))

(cffi:defcfun ("__claw__nk_rgba_f" %nuklear::rgba-f)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::r :float)
              (%nuklear::g :float)
              (%nuklear::b :float)
              (%nuklear::a :float))

(declaim (inline %nuklear::rgba-fv))

(cffi:defcfun ("__claw__nk_rgba_fv" %nuklear::rgba-fv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgba (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::rgba-hex))

(cffi:defcfun ("__claw__nk_rgba_hex" %nuklear::rgba-hex)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgb claw-utils:claw-string))

(declaim (inline %nuklear::rgba-iv))

(cffi:defcfun ("__claw__nk_rgba_iv" %nuklear::rgba-iv)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::rgba (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::rgba-u32))

(cffi:defcfun ("__claw__nk_rgba_u32" %nuklear::rgba-u32)
              (claw-utils:claw-pointer (:struct %nuklear::color))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::arg0 %nuklear::uint))

(declaim (inline %nuklear::select-image-label))

(cffi:defcfun ("__claw__nk_select_image_label"
               %nuklear::select-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::select-image-text))

(cffi:defcfun ("__claw__nk_select_image_text"
               %nuklear::select-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::select-label))

(cffi:defcfun ("nk_select_label" %nuklear::select-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::select-symbol-label))

(cffi:defcfun ("nk_select_symbol_label"
               %nuklear::select-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::select-symbol-text))

(cffi:defcfun ("nk_select_symbol_text" %nuklear::select-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::select-text))

(cffi:defcfun ("nk_select_text" %nuklear::select-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value :int))

(declaim (inline %nuklear::selectable-image-label))

(cffi:defcfun ("__claw__nk_selectable_image_label"
               %nuklear::selectable-image-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::selectable-image-text))

(cffi:defcfun ("__claw__nk_selectable_image_text"
               %nuklear::selectable-image-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::selectable-label))

(cffi:defcfun ("nk_selectable_label" %nuklear::selectable-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::selectable-symbol-label))

(cffi:defcfun ("nk_selectable_symbol_label"
               %nuklear::selectable-symbol-label)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::selectable-symbol-text))

(cffi:defcfun ("nk_selectable_symbol_text"
               %nuklear::selectable-symbol-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::symbol-type)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::selectable-text))

(cffi:defcfun ("nk_selectable_text" %nuklear::selectable-text)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::align %nuklear::flags)
              (%nuklear::value (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::slide-float))

(cffi:defcfun ("nk_slide_float" %nuklear::slide-float)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::min :float)
              (%nuklear::val :float)
              (%nuklear::max :float)
              (%nuklear::step :float))

(declaim (inline %nuklear::slide-int))

(cffi:defcfun ("nk_slide_int" %nuklear::slide-int)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::min :int)
              (%nuklear::val :int)
              (%nuklear::max :int)
              (%nuklear::step :int))

(declaim (inline %nuklear::slider-float))

(cffi:defcfun ("nk_slider_float" %nuklear::slider-float)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::min :float)
              (%nuklear::val (claw-utils:claw-pointer :float))
              (%nuklear::max :float)
              (%nuklear::step :float))

(declaim (inline %nuklear::slider-int))

(cffi:defcfun ("nk_slider_int" %nuklear::slider-int)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::min :int)
              (%nuklear::val (claw-utils:claw-pointer :int))
              (%nuklear::max :int)
              (%nuklear::step :int))

(declaim (inline %nuklear::spacing))

(cffi:defcfun ("nk_spacing" %nuklear::spacing)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::cols :int))

(declaim (inline %nuklear::str-append-str-char))

(cffi:defcfun ("nk_str_append_str_char"
               %nuklear::str-append-str-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::str-append-str-runes))

(cffi:defcfun ("nk_str_append_str_runes"
               %nuklear::str-append-str-runes)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1
               (claw-utils:claw-pointer %nuklear::rune)))

(declaim (inline %nuklear::str-append-str-utf8))

(cffi:defcfun ("nk_str_append_str_utf8"
               %nuklear::str-append-str-utf8)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::str-append-text-char))

(cffi:defcfun ("nk_str_append_text_char"
               %nuklear::str-append-text-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::str-append-text-runes))

(cffi:defcfun ("nk_str_append_text_runes"
               %nuklear::str-append-text-runes)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::str-append-text-utf8))

(cffi:defcfun ("nk_str_append_text_utf8"
               %nuklear::str-append-text-utf8)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::str-at-char))

(cffi:defcfun ("nk_str_at_char" %nuklear::str-at-char)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int))

(declaim (inline %nuklear::str-at-char-const))

(cffi:defcfun ("nk_str_at_char_const" %nuklear::str-at-char-const)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int))

(declaim (inline %nuklear::str-at-const))

(cffi:defcfun ("nk_str_at_const" %nuklear::str-at-const)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::unicode
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::len (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::str-at-rune))

(cffi:defcfun ("nk_str_at_rune" %nuklear::str-at-rune)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::unicode
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::len (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::str-clear))

(cffi:defcfun ("nk_str_clear" %nuklear::str-clear)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-delete-chars))

(cffi:defcfun ("nk_str_delete_chars" %nuklear::str-delete-chars)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::len :int))

(declaim (inline %nuklear::str-delete-runes))

(cffi:defcfun ("nk_str_delete_runes" %nuklear::str-delete-runes)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::len :int))

(declaim (inline %nuklear::str-free))

(cffi:defcfun ("nk_str_free" %nuklear::str-free)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-get))

(cffi:defcfun ("nk_str_get" %nuklear::str-get)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-get-const))

(cffi:defcfun ("nk_str_get_const" %nuklear::str-get-const)
              claw-utils:claw-string
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-init))

(cffi:defcfun ("nk_str_init" %nuklear::str-init)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator)))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::str-init-default))

(cffi:defcfun ("nk_str_init_default" %nuklear::str-init-default)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-init-fixed))

(cffi:defcfun ("nk_str_init_fixed" %nuklear::str-init-fixed)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::str-insert-at-char))

(cffi:defcfun ("nk_str_insert_at_char" %nuklear::str-insert-at-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int))

(declaim (inline %nuklear::str-insert-at-rune))

(cffi:defcfun ("nk_str_insert_at_rune" %nuklear::str-insert-at-rune)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int))

(declaim (inline %nuklear::str-insert-str-char))

(cffi:defcfun ("nk_str_insert_str_char"
               %nuklear::str-insert-str-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string))

(declaim (inline %nuklear::str-insert-str-runes))

(cffi:defcfun ("nk_str_insert_str_runes"
               %nuklear::str-insert-str-runes)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2
               (claw-utils:claw-pointer %nuklear::rune)))

(declaim (inline %nuklear::str-insert-str-utf8))

(cffi:defcfun ("nk_str_insert_str_utf8"
               %nuklear::str-insert-str-utf8)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string))

(declaim (inline %nuklear::str-insert-text-char))

(cffi:defcfun ("nk_str_insert_text_char"
               %nuklear::str-insert-text-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int))

(declaim (inline %nuklear::str-insert-text-runes))

(cffi:defcfun ("nk_str_insert_text_runes"
               %nuklear::str-insert-text-runes)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::arg3 :int))

(declaim (inline %nuklear::str-insert-text-utf8))

(cffi:defcfun ("nk_str_insert_text_utf8"
               %nuklear::str-insert-text-utf8)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int)
              (%nuklear::arg2 claw-utils:claw-string)
              (%nuklear::arg3 :int))

(declaim (inline %nuklear::str-len))

(cffi:defcfun ("nk_str_len" %nuklear::str-len)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-len-char))

(cffi:defcfun ("nk_str_len_char" %nuklear::str-len-char)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str))))

(declaim (inline %nuklear::str-remove-chars))

(cffi:defcfun ("nk_str_remove_chars" %nuklear::str-remove-chars)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::len :int))

(declaim (inline %nuklear::str-remove-runes))

(cffi:defcfun ("nk_str_remove_runes" %nuklear::str-remove-runes)
              :void
              (%nuklear::str
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::len :int))

(declaim (inline %nuklear::str-rune-at))

(cffi:defcfun ("nk_str_rune_at" %nuklear::str-rune-at)
              %nuklear::rune
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::str)))
              (%nuklear::pos :int))

(declaim (inline %nuklear::strfilter))

(cffi:defcfun ("nk_strfilter" %nuklear::strfilter)
              :int
              (%nuklear::text claw-utils:claw-string)
              (%nuklear::regexp claw-utils:claw-string))

(declaim (inline %nuklear::stricmp))

(cffi:defcfun ("nk_stricmp" %nuklear::stricmp)
              :int
              (%nuklear::s1 claw-utils:claw-string)
              (%nuklear::s2 claw-utils:claw-string))

(declaim (inline %nuklear::stricmpn))

(cffi:defcfun ("nk_stricmpn" %nuklear::stricmpn)
              :int
              (%nuklear::s1 claw-utils:claw-string)
              (%nuklear::s2 claw-utils:claw-string)
              (%nuklear::n :int))

(declaim (inline %nuklear::strlen))

(cffi:defcfun ("nk_strlen" %nuklear::strlen)
              :int
              (%nuklear::str claw-utils:claw-string))

(declaim (inline %nuklear::strmatch-fuzzy-string))

(cffi:defcfun ("nk_strmatch_fuzzy_string"
               %nuklear::strmatch-fuzzy-string)
              :int
              (%nuklear::str claw-utils:claw-string)
              (%nuklear::pattern claw-utils:claw-string)
              (%nuklear::out-score (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::strmatch-fuzzy-text))

(cffi:defcfun ("nk_strmatch_fuzzy_text"
               %nuklear::strmatch-fuzzy-text)
              :int
              (%nuklear::txt claw-utils:claw-string)
              (%nuklear::txt-len :int)
              (%nuklear::pattern claw-utils:claw-string)
              (%nuklear::out-score (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::stroke-arc))

(cffi:defcfun ("__claw__nk_stroke_arc" %nuklear::stroke-arc)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::cx :float)
              (%nuklear::cy :float)
              (%nuklear::radius :float)
              (%nuklear::a-min :float)
              (%nuklear::a-max :float)
              (%nuklear::line-thickness :float)
              (%nuklear::arg7
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-circle))

(cffi:defcfun ("__claw__nk_stroke_circle" %nuklear::stroke-circle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::line-thickness :float)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-curve))

(cffi:defcfun ("__claw__nk_stroke_curve" %nuklear::stroke-curve)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1 :float)
              (%nuklear::arg2 :float)
              (%nuklear::arg3 :float)
              (%nuklear::arg4 :float)
              (%nuklear::arg5 :float)
              (%nuklear::arg6 :float)
              (%nuklear::arg7 :float)
              (%nuklear::arg8 :float)
              (%nuklear::line-thickness :float)
              (%nuklear::arg10
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-line))

(cffi:defcfun ("__claw__nk_stroke_line" %nuklear::stroke-line)
              :void
              (%nuklear::b
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::x0 :float)
              (%nuklear::y0 :float)
              (%nuklear::x1 :float)
              (%nuklear::y1 :float)
              (%nuklear::line-thickness :float)
              (%nuklear::arg6
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-polygon))

(cffi:defcfun ("__claw__nk_stroke_polygon" %nuklear::stroke-polygon)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1 (claw-utils:claw-pointer :float))
              (%nuklear::point-count :int)
              (%nuklear::line-thickness :float)
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-polyline))

(cffi:defcfun ("__claw__nk_stroke_polyline"
               %nuklear::stroke-polyline)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::points (claw-utils:claw-pointer :float))
              (%nuklear::point-count :int)
              (%nuklear::line-thickness :float)
              (%nuklear::col
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-rect))

(cffi:defcfun ("__claw__nk_stroke_rect" %nuklear::stroke-rect)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::rounding :float)
              (%nuklear::line-thickness :float)
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::stroke-triangle))

(cffi:defcfun ("__claw__nk_stroke_triangle"
               %nuklear::stroke-triangle)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::command-buffer)))
              (%nuklear::arg1 :float)
              (%nuklear::arg2 :float)
              (%nuklear::arg3 :float)
              (%nuklear::arg4 :float)
              (%nuklear::arg5 :float)
              (%nuklear::arg6 :float)
              (%nuklear::line-thichness :float)
              (%nuklear::arg8
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::strtod))

(cffi:defcfun ("nk_strtod" %nuklear::strtod)
              :double
              (%nuklear::str claw-utils:claw-string)
              (%nuklear::endptr
               (claw-utils:claw-pointer claw-utils:claw-string)))

(declaim (inline %nuklear::strtof))

(cffi:defcfun ("nk_strtof" %nuklear::strtof)
              :float
              (%nuklear::str claw-utils:claw-string)
              (%nuklear::endptr
               (claw-utils:claw-pointer claw-utils:claw-string)))

(declaim (inline %nuklear::strtoi))

(cffi:defcfun ("nk_strtoi" %nuklear::strtoi)
              :int
              (%nuklear::str claw-utils:claw-string)
              (%nuklear::endptr
               (claw-utils:claw-pointer claw-utils:claw-string)))

(declaim (inline %nuklear::style-default))

(cffi:defcfun ("nk_style_default" %nuklear::style-default)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-from-table))

(cffi:defcfun ("nk_style_from_table" %nuklear::style-from-table)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::style-get-color-by-name))

(cffi:defcfun ("nk_style_get_color_by_name"
               %nuklear::style-get-color-by-name)
              claw-utils:claw-string
              (%nuklear::arg0 %nuklear::style-colors))

(declaim (inline %nuklear::style-hide-cursor))

(cffi:defcfun ("nk_style_hide_cursor" %nuklear::style-hide-cursor)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-item-color))

(cffi:defcfun ("__claw__nk_style_item_color"
               %nuklear::style-item-color)
              (claw-utils:claw-pointer
               (:struct %nuklear::style-item))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer
                (:struct %nuklear::style-item)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::style-item-hide))

(cffi:defcfun ("__claw__nk_style_item_hide"
               %nuklear::style-item-hide)
              (claw-utils:claw-pointer
               (:struct %nuklear::style-item))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer
                (:struct %nuklear::style-item))))

(declaim (inline %nuklear::style-item-image))

(cffi:defcfun ("__claw__nk_style_item_image"
               %nuklear::style-item-image)
              (claw-utils:claw-pointer
               (:struct %nuklear::style-item))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer
                (:struct %nuklear::style-item)))
              (%nuklear::img
               (claw-utils:claw-pointer (:struct %nuklear::image))))

(declaim (inline %nuklear::style-load-all-cursors))

(cffi:defcfun ("nk_style_load_all_cursors"
               %nuklear::style-load-all-cursors)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::cursor))))

(declaim (inline %nuklear::style-load-cursor))

(cffi:defcfun ("nk_style_load_cursor" %nuklear::style-load-cursor)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::style-cursor)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::cursor))))

(declaim (inline %nuklear::style-pop-color))

(cffi:defcfun ("nk_style_pop_color" %nuklear::style-pop-color)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-pop-flags))

(cffi:defcfun ("nk_style_pop_flags" %nuklear::style-pop-flags)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-pop-float))

(cffi:defcfun ("nk_style_pop_float" %nuklear::style-pop-float)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-pop-font))

(cffi:defcfun ("nk_style_pop_font" %nuklear::style-pop-font)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-pop-style-item))

(cffi:defcfun ("nk_style_pop_style_item"
               %nuklear::style-pop-style-item)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-pop-vec2))

(cffi:defcfun ("nk_style_pop_vec2" %nuklear::style-pop-vec2)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::style-push-color))

(cffi:defcfun ("__claw__nk_style_push_color"
               %nuklear::style-push-color)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::color)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::style-push-flags))

(cffi:defcfun ("nk_style_push_flags" %nuklear::style-push-flags)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer %nuklear::flags))
              (%nuklear::arg2 %nuklear::flags))

(declaim (inline %nuklear::style-push-float))

(cffi:defcfun ("nk_style_push_float" %nuklear::style-push-float)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 (claw-utils:claw-pointer :float))
              (%nuklear::arg2 :float))

(declaim (inline %nuklear::style-push-font))

(cffi:defcfun ("nk_style_push_font" %nuklear::style-push-font)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::style-push-style-item))

(cffi:defcfun ("__claw__nk_style_push_style_item"
               %nuklear::style-push-style-item)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::style-item)))
              (%nuklear::arg2
               (claw-utils:claw-pointer
                (:struct %nuklear::style-item))))

(declaim (inline %nuklear::style-push-vec2))

(cffi:defcfun ("__claw__nk_style_push_vec2"
               %nuklear::style-push-vec2)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::style-set-cursor))

(cffi:defcfun ("nk_style_set_cursor" %nuklear::style-set-cursor)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::style-cursor))

(declaim (inline %nuklear::style-set-font))

(cffi:defcfun ("nk_style_set_font" %nuklear::style-set-font)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::user-font))))

(declaim (inline %nuklear::style-show-cursor))

(cffi:defcfun ("nk_style_show_cursor" %nuklear::style-show-cursor)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::subimage-handle))

(cffi:defcfun ("__claw__nk_subimage_handle"
               %nuklear::subimage-handle)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0
               (claw-utils:claw-pointer %nuklear::handle))
              (%nuklear::w :unsigned-short)
              (%nuklear::h :unsigned-short)
              (%nuklear::sub-region
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::subimage-id))

(cffi:defcfun ("__claw__nk_subimage_id" %nuklear::subimage-id)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0 :int)
              (%nuklear::w :unsigned-short)
              (%nuklear::h :unsigned-short)
              (%nuklear::sub-region
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::subimage-ptr))

(cffi:defcfun ("__claw__nk_subimage_ptr" %nuklear::subimage-ptr)
              (claw-utils:claw-pointer (:struct %nuklear::image))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::arg0 (claw-utils:claw-pointer :void))
              (%nuklear::w :unsigned-short)
              (%nuklear::h :unsigned-short)
              (%nuklear::sub-region
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::text))

(cffi:defcfun ("nk_text" %nuklear::text)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::arg3 %nuklear::flags))

(declaim (inline %nuklear::text-colored))

(cffi:defcfun ("__claw__nk_text_colored" %nuklear::text-colored)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::arg3 %nuklear::flags)
              (%nuklear::arg4
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::text-wrap))

(cffi:defcfun ("nk_text_wrap" %nuklear::text-wrap)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::text-wrap-colored))

(cffi:defcfun ("__claw__nk_text_wrap_colored"
               %nuklear::text-wrap-colored)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int)
              (%nuklear::arg3
               (claw-utils:claw-pointer (:struct %nuklear::color))))

(declaim (inline %nuklear::textedit-cut))

(cffi:defcfun ("nk_textedit_cut" %nuklear::textedit-cut)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-delete))

(cffi:defcfun ("nk_textedit_delete" %nuklear::textedit-delete)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::where :int)
              (%nuklear::len :int))

(declaim (inline %nuklear::textedit-delete-selection))

(cffi:defcfun ("nk_textedit_delete_selection"
               %nuklear::textedit-delete-selection)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-free))

(cffi:defcfun ("nk_textedit_free" %nuklear::textedit-free)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-init))

(cffi:defcfun ("nk_textedit_init" %nuklear::textedit-init)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::arg1
               (claw-utils:claw-pointer
                (:struct %nuklear::allocator)))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::textedit-init-default))

(cffi:defcfun ("nk_textedit_init_default"
               %nuklear::textedit-init-default)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-init-fixed))

(cffi:defcfun ("nk_textedit_init_fixed"
               %nuklear::textedit-init-fixed)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::memory (claw-utils:claw-pointer :void))
              (%nuklear::size %nuklear::size))

(declaim (inline %nuklear::textedit-paste))

(cffi:defcfun ("nk_textedit_paste" %nuklear::textedit-paste)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::len :int))

(declaim (inline %nuklear::textedit-redo))

(cffi:defcfun ("nk_textedit_redo" %nuklear::textedit-redo)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-select-all))

(cffi:defcfun ("nk_textedit_select_all"
               %nuklear::textedit-select-all)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::textedit-text))

(cffi:defcfun ("nk_textedit_text" %nuklear::textedit-text)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit)))
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::total-len :int))

(declaim (inline %nuklear::textedit-undo))

(cffi:defcfun ("nk_textedit_undo" %nuklear::textedit-undo)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer
                (:struct %nuklear::text-edit))))

(declaim (inline %nuklear::tooltip))

(cffi:defcfun ("nk_tooltip" %nuklear::tooltip)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::tooltip-begin))

(cffi:defcfun ("nk_tooltip_begin" %nuklear::tooltip-begin)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::width :float))

(declaim (inline %nuklear::tooltip-end))

(cffi:defcfun ("nk_tooltip_end" %nuklear::tooltip-end)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::tree-element-image-push-hashed))

(cffi:defcfun ("__claw__nk_tree_element_image_push_hashed"
               %nuklear::tree-element-image-push-hashed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::initial-state %nuklear::collapse-states)
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::hash claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::seed :int))

(declaim (inline %nuklear::tree-element-pop))

(cffi:defcfun ("nk_tree_element_pop" %nuklear::tree-element-pop)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::tree-element-push-hashed))

(cffi:defcfun ("nk_tree_element_push_hashed"
               %nuklear::tree-element-push-hashed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::initial-state %nuklear::collapse-states)
              (%nuklear::selected (claw-utils:claw-pointer :int))
              (%nuklear::hash claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::seed :int))

(declaim (inline %nuklear::tree-image-push-hashed))

(cffi:defcfun ("__claw__nk_tree_image_push_hashed"
               %nuklear::tree-image-push-hashed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::initial-state %nuklear::collapse-states)
              (%nuklear::hash claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::seed :int))

(declaim (inline %nuklear::tree-pop))

(cffi:defcfun ("nk_tree_pop" %nuklear::tree-pop)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::tree-push-hashed))

(cffi:defcfun ("nk_tree_push_hashed" %nuklear::tree-push-hashed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::initial-state %nuklear::collapse-states)
              (%nuklear::hash claw-utils:claw-string)
              (%nuklear::len :int)
              (%nuklear::seed :int))

(declaim (inline %nuklear::tree-state-image-push))

(cffi:defcfun ("__claw__nk_tree_state_image_push"
               %nuklear::tree-state-image-push)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::image)))
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::state
               (claw-utils:claw-pointer %nuklear::collapse-states)))

(declaim (inline %nuklear::tree-state-pop))

(cffi:defcfun ("nk_tree_state_pop" %nuklear::tree-state-pop)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::tree-state-push))

(cffi:defcfun ("nk_tree_state_push" %nuklear::tree-state-push)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::tree-type)
              (%nuklear::title claw-utils:claw-string)
              (%nuklear::state
               (claw-utils:claw-pointer %nuklear::collapse-states)))

(declaim (inline %nuklear::triangle-from-direction))

(cffi:defcfun ("__claw__nk_triangle_from_direction"
               %nuklear::triangle-from-direction)
              :void
              (%nuklear::result
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::r
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::pad-x :float)
              (%nuklear::pad-y :float)
              (%nuklear::arg4 %nuklear::heading))

(declaim (inline %nuklear::utf-at))

(cffi:defcfun ("nk_utf_at" %nuklear::utf-at)
              claw-utils:claw-string
              (%nuklear::buffer claw-utils:claw-string)
              (%nuklear::length :int)
              (%nuklear::index :int)
              (%nuklear::unicode
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::len (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::utf-decode))

(cffi:defcfun ("nk_utf_decode" %nuklear::utf-decode)
              :int
              (%nuklear::arg0 claw-utils:claw-string)
              (%nuklear::arg1
               (claw-utils:claw-pointer %nuklear::rune))
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::utf-encode))

(cffi:defcfun ("nk_utf_encode" %nuklear::utf-encode)
              :int
              (%nuklear::arg0 %nuklear::rune)
              (%nuklear::arg1 claw-utils:claw-string)
              (%nuklear::arg2 :int))

(declaim (inline %nuklear::utf-len))

(cffi:defcfun ("nk_utf_len" %nuklear::utf-len)
              :int
              (%nuklear::arg0 claw-utils:claw-string)
              (%nuklear::byte-len :int))

(declaim (inline %nuklear::vec2))

(cffi:defcfun ("__claw__nk_vec2" %nuklear::vec2)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::x :float)
              (%nuklear::y :float))

(declaim (inline %nuklear::vec2i))

(cffi:defcfun ("__claw__nk_vec2i" %nuklear::vec2i)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::x :int)
              (%nuklear::y :int))

(declaim (inline %nuklear::vec2iv))

(cffi:defcfun ("__claw__nk_vec2iv" %nuklear::vec2iv)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::xy (claw-utils:claw-pointer :int)))

(declaim (inline %nuklear::vec2v))

(cffi:defcfun ("__claw__nk_vec2v" %nuklear::vec2v)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::xy (claw-utils:claw-pointer :float)))

(declaim (inline %nuklear::widget))

(cffi:defcfun ("nk_widget" %nuklear::widget)
              %nuklear::widget-layout-states
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-bounds))

(cffi:defcfun ("__claw__nk_widget_bounds" %nuklear::widget-bounds)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-fitting))

(cffi:defcfun ("__claw__nk_widget_fitting" %nuklear::widget-fitting)
              %nuklear::widget-layout-states
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg1
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::widget-has-mouse-click-down))

(cffi:defcfun ("nk_widget_has_mouse_click_down"
               %nuklear::widget-has-mouse-click-down)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::buttons)
              (%nuklear::down :int))

(declaim (inline %nuklear::widget-height))

(cffi:defcfun ("nk_widget_height" %nuklear::widget-height)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-is-hovered))

(cffi:defcfun ("nk_widget_is_hovered" %nuklear::widget-is-hovered)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-is-mouse-clicked))

(cffi:defcfun ("nk_widget_is_mouse_clicked"
               %nuklear::widget-is-mouse-clicked)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 %nuklear::buttons))

(declaim (inline %nuklear::widget-position))

(cffi:defcfun ("__claw__nk_widget_position"
               %nuklear::widget-position)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-size))

(cffi:defcfun ("__claw__nk_widget_size" %nuklear::widget-size)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::widget-width))

(cffi:defcfun ("nk_widget_width" %nuklear::widget-width)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-close))

(cffi:defcfun ("nk_window_close" %nuklear::window-close)
              :void
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string))

(declaim (inline %nuklear::window-collapse))

(cffi:defcfun ("nk_window_collapse" %nuklear::window-collapse)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::state %nuklear::collapse-states))

(declaim (inline %nuklear::window-collapse-if))

(cffi:defcfun ("nk_window_collapse_if" %nuklear::window-collapse-if)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::collapse-states)
              (%nuklear::cond :int))

(declaim (inline %nuklear::window-find))

(cffi:defcfun ("nk_window_find" %nuklear::window-find)
              (claw-utils:claw-pointer (:struct %nuklear::window))
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string))

(declaim (inline %nuklear::window-get-bounds))

(cffi:defcfun ("__claw__nk_window_get_bounds"
               %nuklear::window-get-bounds)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-canvas))

(cffi:defcfun ("nk_window_get_canvas" %nuklear::window-get-canvas)
              (claw-utils:claw-pointer
               (:struct %nuklear::command-buffer))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-content-region))

(cffi:defcfun ("__claw__nk_window_get_content_region"
               %nuklear::window-get-content-region)
              (claw-utils:claw-pointer (:struct %nuklear::rect))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::rect)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-content-region-max))

(cffi:defcfun ("__claw__nk_window_get_content_region_max"
               %nuklear::window-get-content-region-max)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-content-region-min))

(cffi:defcfun ("__claw__nk_window_get_content_region_min"
               %nuklear::window-get-content-region-min)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-content-region-size))

(cffi:defcfun ("__claw__nk_window_get_content_region_size"
               %nuklear::window-get-content-region-size)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-height))

(cffi:defcfun ("nk_window_get_height" %nuklear::window-get-height)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-panel))

(cffi:defcfun ("nk_window_get_panel" %nuklear::window-get-panel)
              (claw-utils:claw-pointer (:struct %nuklear::panel))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-position))

(cffi:defcfun ("__claw__nk_window_get_position"
               %nuklear::window-get-position)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-scroll))

(cffi:defcfun ("nk_window_get_scroll" %nuklear::window-get-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::offset-x
               (claw-utils:claw-pointer %nuklear::uint))
              (%nuklear::offset-y
               (claw-utils:claw-pointer %nuklear::uint)))

(declaim (inline %nuklear::window-get-size))

(cffi:defcfun ("__claw__nk_window_get_size"
               %nuklear::window-get-size)
              (claw-utils:claw-pointer (:struct %nuklear::vec2))
              (%nuklear::%%claw-result-
               (claw-utils:claw-pointer (:struct %nuklear::vec2)))
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-get-width))

(cffi:defcfun ("nk_window_get_width" %nuklear::window-get-width)
              :float
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-has-focus))

(cffi:defcfun ("nk_window_has_focus" %nuklear::window-has-focus)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-is-active))

(cffi:defcfun ("nk_window_is_active" %nuklear::window-is-active)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::window-is-any-hovered))

(cffi:defcfun ("nk_window_is_any_hovered"
               %nuklear::window-is-any-hovered)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-is-closed))

(cffi:defcfun ("nk_window_is_closed" %nuklear::window-is-closed)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::window-is-collapsed))

(cffi:defcfun ("nk_window_is_collapsed"
               %nuklear::window-is-collapsed)
              :int
              (%nuklear::ctx
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string))

(declaim (inline %nuklear::window-is-hidden))

(cffi:defcfun ("nk_window_is_hidden" %nuklear::window-is-hidden)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::arg1 claw-utils:claw-string))

(declaim (inline %nuklear::window-is-hovered))

(cffi:defcfun ("nk_window_is_hovered" %nuklear::window-is-hovered)
              :int
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context))))

(declaim (inline %nuklear::window-set-bounds))

(cffi:defcfun ("__claw__nk_window_set_bounds"
               %nuklear::window-set-bounds)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::bounds
               (claw-utils:claw-pointer (:struct %nuklear::rect))))

(declaim (inline %nuklear::window-set-focus))

(cffi:defcfun ("nk_window_set_focus" %nuklear::window-set-focus)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string))

(declaim (inline %nuklear::window-set-position))

(cffi:defcfun ("__claw__nk_window_set_position"
               %nuklear::window-set-position)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::pos
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::window-set-scroll))

(cffi:defcfun ("nk_window_set_scroll" %nuklear::window-set-scroll)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::offset-x %nuklear::uint)
              (%nuklear::offset-y %nuklear::uint))

(declaim (inline %nuklear::window-set-size))

(cffi:defcfun ("__claw__nk_window_set_size"
               %nuklear::window-set-size)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::arg2
               (claw-utils:claw-pointer (:struct %nuklear::vec2))))

(declaim (inline %nuklear::window-show))

(cffi:defcfun ("nk_window_show" %nuklear::window-show)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::show-states))

(declaim (inline %nuklear::window-show-if))

(cffi:defcfun ("nk_window_show_if" %nuklear::window-show-if)
              :void
              (%nuklear::arg0
               (claw-utils:claw-pointer (:struct %nuklear::context)))
              (%nuklear::name claw-utils:claw-string)
              (%nuklear::arg2 %nuklear::show-states)
              (%nuklear::cond :int))

(cffi:defcstruct (%nuklear::command-arc :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::cx :short :offset 16)
                 (%nuklear::cy :short :offset 18)
                 (%nuklear::r :unsigned-short :offset 20)
                 (%nuklear::line-thickness :unsigned-short :offset
                  22)
                 (%nuklear::a :float :count 2 :offset 24)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  32))

(cffi:defcstruct (%nuklear::command-arc-filled :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::cx :short :offset 16)
                 (%nuklear::cy :short :offset 18)
                 (%nuklear::r :unsigned-short :offset 20)
                 (%nuklear::a :float :count 2 :offset 24)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  32))

(cffi:defcstruct (%nuklear::command-circle :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::line-thickness :unsigned-short :offset
                  20)
                 (%nuklear::w :unsigned-short :offset 22)
                 (%nuklear::h :unsigned-short :offset 24)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  26))

(cffi:defcstruct (%nuklear::command-circle-filled :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::w :unsigned-short :offset 20)
                 (%nuklear::h :unsigned-short :offset 22)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  24))

(cffi:defcstruct (%nuklear::vec2i :size 4)
                 (%nuklear::x :short :offset 0)
                 (%nuklear::y :short :offset 2))

(cffi:defcstruct (%nuklear::command-curve :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::line-thickness :unsigned-short :offset
                  16)
                 (%nuklear::begin (:struct %nuklear::vec2i) :offset
                  18)
                 (%nuklear::end (:struct %nuklear::vec2i) :offset 22)
                 (%nuklear::ctrl (:struct %nuklear::vec2i) :count 2
                  :offset 26)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  34))

(cffi:defcstruct (%nuklear::command-custom :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::w :unsigned-short :offset 20)
                 (%nuklear::h :unsigned-short :offset 22)
                 (%nuklear::callback-data %nuklear::handle :offset
                  24)
                 (%nuklear::callback
                  %nuklear::command-custom-callback :offset 32))

(cffi:defcstruct (%nuklear::command-image :size 56)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::w :unsigned-short :offset 20)
                 (%nuklear::h :unsigned-short :offset 22)
                 (%nuklear::img (:struct %nuklear::image) :offset 24)
                 (%nuklear::col (:struct %nuklear::color) :offset 48))

(cffi:defcstruct (%nuklear::command-line :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::line-thickness :unsigned-short :offset
                  16)
                 (%nuklear::begin (:struct %nuklear::vec2i) :offset
                  18)
                 (%nuklear::end (:struct %nuklear::vec2i) :offset 22)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  26))

(cffi:defcstruct (%nuklear::command-polygon :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  16)
                 (%nuklear::line-thickness :unsigned-short :offset
                  20)
                 (%nuklear::point-count :unsigned-short :offset 22)
                 (%nuklear::points (:struct %nuklear::vec2i) :count 1
                  :offset 24))

(cffi:defcstruct (%nuklear::command-polygon-filled :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  16)
                 (%nuklear::point-count :unsigned-short :offset 20)
                 (%nuklear::points (:struct %nuklear::vec2i) :count 1
                  :offset 22))

(cffi:defcstruct (%nuklear::command-polyline :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  16)
                 (%nuklear::line-thickness :unsigned-short :offset
                  20)
                 (%nuklear::point-count :unsigned-short :offset 22)
                 (%nuklear::points (:struct %nuklear::vec2i) :count 1
                  :offset 24))

(cffi:defcstruct (%nuklear::command-rect :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::rounding :unsigned-short :offset 16)
                 (%nuklear::line-thickness :unsigned-short :offset
                  18)
                 (%nuklear::x :short :offset 20)
                 (%nuklear::y :short :offset 22)
                 (%nuklear::w :unsigned-short :offset 24)
                 (%nuklear::h :unsigned-short :offset 26)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  28))

(cffi:defcstruct (%nuklear::command-rect-filled :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::rounding :unsigned-short :offset 16)
                 (%nuklear::x :short :offset 18)
                 (%nuklear::y :short :offset 20)
                 (%nuklear::w :unsigned-short :offset 22)
                 (%nuklear::h :unsigned-short :offset 24)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  26))

(cffi:defcstruct (%nuklear::command-rect-multi-color :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::w :unsigned-short :offset 20)
                 (%nuklear::h :unsigned-short :offset 22)
                 (%nuklear::left (:struct %nuklear::color) :offset
                  24)
                 (%nuklear::top (:struct %nuklear::color) :offset 28)
                 (%nuklear::bottom (:struct %nuklear::color) :offset
                  32)
                 (%nuklear::right (:struct %nuklear::color) :offset
                  36))

(cffi:defcstruct (%nuklear::command-scissor :size 24)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::x :short :offset 16)
                 (%nuklear::y :short :offset 18)
                 (%nuklear::w :unsigned-short :offset 20)
                 (%nuklear::h :unsigned-short :offset 22))

(cffi:defcstruct (%nuklear::command-text :size 56)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::font
                  (claw-utils:claw-pointer
                   (:struct %nuklear::user-font))
                  :offset 16)
                 (%nuklear::background (:struct %nuklear::color)
                  :offset 24)
                 (%nuklear::foreground (:struct %nuklear::color)
                  :offset 28)
                 (%nuklear::x :short :offset 32)
                 (%nuklear::y :short :offset 34)
                 (%nuklear::w :unsigned-short :offset 36)
                 (%nuklear::h :unsigned-short :offset 38)
                 (%nuklear::height :float :offset 40)
                 (%nuklear::length :int :offset 44)
                 (%nuklear::string :char :count 1 :offset 48))

(cffi:defcstruct (%nuklear::command-triangle :size 40)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::line-thickness :unsigned-short :offset
                  16)
                 (%nuklear::a (:struct %nuklear::vec2i) :offset 18)
                 (%nuklear::b (:struct %nuklear::vec2i) :offset 22)
                 (%nuklear::c (:struct %nuklear::vec2i) :offset 26)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  30))

(cffi:defcstruct (%nuklear::command-triangle-filled :size 32)
                 (%nuklear::header (:struct %nuklear::command)
                  :offset 0)
                 (%nuklear::a (:struct %nuklear::vec2i) :offset 16)
                 (%nuklear::b (:struct %nuklear::vec2i) :offset 20)
                 (%nuklear::c (:struct %nuklear::vec2i) :offset 24)
                 (%nuklear::color (:struct %nuklear::color) :offset
                  28))

(cffi:defcstruct (%nuklear::style-slide :size 0))

(cffi:defcstruct (%nuklear::user-font-glyph :size 36)
                 (%nuklear::uv (:struct %nuklear::vec2) :count 2
                  :offset 0)
                 (%nuklear::offset (:struct %nuklear::vec2) :offset
                  16)
                 (%nuklear::width :float :offset 24)
                 (%nuklear::height :float :offset 28)
                 (%nuklear::xadvance :float :offset 32))

(cffi:defctype %nuklear::char :char)

(cffi:defctype %nuklear::draw-index :unsigned-short)

(cffi:defctype %nuklear::int :int)

(cffi:defctype %nuklear::ptr :unsigned-long)

(cffi:defctype %nuklear::short :short)

(cffi:defctype %nuklear::uchar :unsigned-char)

(cffi:defctype %nuklear::ushort :unsigned-short)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%nuklear::config-stack-vec2 :%nuklear)
  (export '%nuklear::group-scrolled-begin :%nuklear)
  (export '%nuklear::str-len :%nuklear)
  (export '%nuklear::property-state :%nuklear)
  (export '%nuklear::radio-text :%nuklear)
  (export '%nuklear::window-collapse :%nuklear)
  (export '%nuklear::config-stack-float :%nuklear)
  (export '%nuklear::command-custom :%nuklear)
  (export '%nuklear::edit-string-zero-terminated :%nuklear)
  (export '%nuklear::+vector-stack-size+ :%nuklear)
  (export '%nuklear::layout-space-end :%nuklear)
  (export '%nuklear::symbol-hover :%nuklear)
  (export '%nuklear::layout-widget-bounds :%nuklear)
  (export '%nuklear::hsva-iv :%nuklear)
  (export '%nuklear::style-pop-style-item :%nuklear)
  (export '%nuklear::chart :%nuklear)
  (export '%nuklear::descent :%nuklear)
  (export '%nuklear::close-symbol :%nuklear)
  (export '%nuklear::permanent :%nuklear)
  (export '%nuklear::scroll-pointer :%nuklear)
  (export '%nuklear::baked-font :%nuklear)
  (export '%nuklear::dec-symbol :%nuklear)
  (export '%nuklear::tooltip-end :%nuklear)
  (export '%nuklear::layout-row-template-push-dynamic :%nuklear)
  (export '%nuklear::g :%nuklear)
  (export '%nuklear::color-format :%nuklear)
  (export '%nuklear::maximize-symbol :%nuklear)
  (export '%nuklear::string :%nuklear)
  (export '%nuklear::table :%nuklear)
  (export '%nuklear::down :%nuklear)
  (export '%nuklear::selected-hover :%nuklear)
  (export '%nuklear::str-len-char :%nuklear)
  (export '%nuklear::group-set-scroll :%nuklear)
  (export '%nuklear::begin :%nuklear)
  (export '%nuklear::+global+ :%nuklear)
  (export '%nuklear::pool :%nuklear)
  (export '%nuklear::layout-space-to-local :%nuklear)
  (export '%nuklear::ratio :%nuklear)
  (export '%nuklear::tree-state-pop :%nuklear)
  (export '%nuklear::window-get-content-region :%nuklear)
  (export '%nuklear::button-label-styled :%nuklear)
  (export '%nuklear::rgba-fv :%nuklear)
  (export '%nuklear::capacity :%nuklear)
  (export '%nuklear::input-is-key-released :%nuklear)
  (export '%nuklear::pages :%nuklear)
  (export '%nuklear::button-symbol :%nuklear)
  (export '%nuklear::calls :%nuklear)
  (export '%nuklear::uint :%nuklear)
  (export '%nuklear::rgb-cf :%nuklear)
  (export '%nuklear::window :%nuklear)
  (export '%nuklear::header-height :%nuklear)
  (export '%nuklear::style-window :%nuklear)
  (export '%nuklear::textedit-init-default :%nuklear)
  (export '%nuklear::cursor-normal :%nuklear)
  (export '%nuklear::fill-rect-multi-color :%nuklear)
  (export '%nuklear::draw-list-path-curve-to :%nuklear)
  (export '%nuklear::stroke-curve :%nuklear)
  (export '%nuklear::head :%nuklear)
  (export '%nuklear::color-hsva-b :%nuklear)
  (export '%nuklear::xadvance :%nuklear)
  (export '%nuklear::text :%nuklear)
  (export '%nuklear::+uint32+ :%nuklear)
  (export '%nuklear::widget :%nuklear)
  (export '%nuklear::group-end :%nuklear)
  (export '%nuklear::str-insert-at-char :%nuklear)
  (export '%nuklear::command-curve :%nuklear)
  (export '%nuklear::vertex-alignment :%nuklear)
  (export '%nuklear::query-font-glyph-f :%nuklear)
  (export '%nuklear::window-get-content-region-min :%nuklear)
  (export '%nuklear::+max-number-buffer+ :%nuklear)
  (export '%nuklear::stricmp :%nuklear)
  (export '%nuklear::hsva-bv :%nuklear)
  (export '%nuklear::layout-row-begin :%nuklear)
  (export '%nuklear::layout-row-template-end :%nuklear)
  (export '%nuklear::rgba-hex :%nuklear)
  (export '%nuklear::text-wrap-colored :%nuklear)
  (export '%nuklear::textedit-init :%nuklear)
  (export '%nuklear::str-free :%nuklear)
  (export '%nuklear::cursor-border-color :%nuklear)
  (export '%nuklear::draw-list-init :%nuklear)
  (export '%nuklear::fill-arc :%nuklear)
  (export '%nuklear::checkbox-text :%nuklear)
  (export '%nuklear::callback-data :%nuklear)
  (export '%nuklear::style-items :%nuklear)
  (export '%nuklear::command-arc-filled :%nuklear)
  (export '%nuklear::menubar-end :%nuklear)
  (export '%nuklear::widget-position :%nuklear)
  (export '%nuklear::hsv-bv :%nuklear)
  (export '%nuklear::ungrab :%nuklear)
  (export '%nuklear::command-list-begin :%nuklear)
  (export '%nuklear::build :%nuklear)
  (export '%nuklear::window-set-bounds :%nuklear)
  (export '%nuklear::window-get-height :%nuklear)
  (export '%nuklear::scaler :%nuklear)
  (export '%nuklear::label :%nuklear)
  (export '%nuklear::button-padding :%nuklear)
  (export '%nuklear::tree-push-hashed :%nuklear)
  (export '%nuklear::temporary :%nuklear)
  (export '%nuklear::page-element :%nuklear)
  (export '%nuklear::group-begin-titled :%nuklear)
  (export '%nuklear::style-property :%nuklear)
  (export '%nuklear::stroke-rect :%nuklear)
  (export '%nuklear::widget-height :%nuklear)
  (export '%nuklear::config-stack-button-behavior :%nuklear)
  (export '%nuklear::window-is-collapsed :%nuklear)
  (export '%nuklear::vertex-count :%nuklear)
  (export '%nuklear::tooltip-padding :%nuklear)
  (export '%nuklear::tree-type :%nuklear)
  (export '%nuklear::font-cyrillic-glyph-ranges :%nuklear)
  (export '%nuklear::menu-state :%nuklear)
  (export '%nuklear::v0 :%nuklear)
  (export '%nuklear::cy :%nuklear)
  (export '%nuklear::draw-vertex-layout-element :%nuklear)
  (export '%nuklear::contextual-item-symbol-label :%nuklear)
  (export '%nuklear::sym-hover :%nuklear)
  (export '%nuklear::ttf-data-owned-by-atlas :%nuklear)
  (export '%nuklear::columns :%nuklear)
  (export '%nuklear::edit-focus :%nuklear)
  (export '%nuklear::font-atlas-add-default :%nuklear)
  (export '%nuklear::item :%nuklear)
  (export '%nuklear::check-text :%nuklear)
  (export '%nuklear::clear :%nuklear)
  (export '%nuklear::combo-begin-image-label :%nuklear)
  (export '%nuklear::win :%nuklear)
  (export '%nuklear::element-count :%nuklear)
  (export '%nuklear::text-align :%nuklear)
  (export '%nuklear::tree-pop :%nuklear)
  (export '%nuklear::delete-length :%nuklear)
  (export '%nuklear::clip :%nuklear)
  (export '%nuklear::textedit-cut :%nuklear)
  (export '%nuklear::layout-row-template-begin :%nuklear)
  (export '%nuklear::layout-space-to-screen :%nuklear)
  (export '%nuklear::combo-begin-text :%nuklear)
  (export '%nuklear::coord-type :%nuklear)
  (export '%nuklear::window-show :%nuklear)
  (export '%nuklear::text-hover :%nuklear)
  (export '%nuklear::+style-item-stack-size+ :%nuklear)
  (export '%nuklear::font-korean-glyph-ranges :%nuklear)
  (export '%nuklear::combo-callback :%nuklear)
  (export '%nuklear::button-image-styled :%nuklear)
  (export '%nuklear::str-append-str-runes :%nuklear)
  (export '%nuklear::scale :%nuklear)
  (export '%nuklear::keyboard :%nuklear)
  (export '%nuklear::textedit-redo :%nuklear)
  (export '%nuklear::rgba :%nuklear)
  (export '%nuklear::config-stack-float-element :%nuklear)
  (export '%nuklear::plugin-copy :%nuklear)
  (export '%nuklear::+textedit-undocharcount+ :%nuklear)
  (export '%nuklear::active :%nuklear)
  (export '%nuklear::font-chinese-glyph-ranges :%nuklear)
  (export '%nuklear::layout :%nuklear)
  (export '%nuklear::button-image-text :%nuklear)
  (export '%nuklear::custom :%nuklear)
  (export '%nuklear::window-get-width :%nuklear)
  (export '%nuklear::+uint16+ :%nuklear)
  (export '%nuklear::group-begin :%nuklear)
  (export '%nuklear::point-count :%nuklear)
  (export '%nuklear::use-pool :%nuklear)
  (export '%nuklear::textedit-select-all :%nuklear)
  (export '%nuklear::+scrollbar-hiding-timeout+ :%nuklear)
  (export '%nuklear::format :%nuklear)
  (export '%nuklear::|C:@UA@NK-HANDLE| :%nuklear)
  (export '%nuklear::count :%nuklear)
  (export '%nuklear::glyphs :%nuklear)
  (export '%nuklear::info :%nuklear)
  (export '%nuklear::color-d :%nuklear)
  (export '%nuklear::+include-font-baking+ :%nuklear)
  (export '%nuklear::name-string :%nuklear)
  (export '%nuklear::memory-status :%nuklear)
  (export '%nuklear::min :%nuklear)
  (export '%nuklear::init-default :%nuklear)
  (export '%nuklear::filter-hex :%nuklear)
  (export '%nuklear::str :%nuklear)
  (export '%nuklear::rgba-iv :%nuklear)
  (export '%nuklear::select-symbol-text :%nuklear)
  (export '%nuklear::filter-ascii :%nuklear)
  (export '%nuklear::draw-image :%nuklear)
  (export '%nuklear::sym-normal :%nuklear)
  (export '%nuklear::glyph :%nuklear)
  (export '%nuklear::style-text :%nuklear)
  (export '%nuklear::n :%nuklear)
  (export '%nuklear::window-collapse-if :%nuklear)
  (export '%nuklear::panel-set :%nuklear)
  (export '%nuklear::edit-flags :%nuklear)
  (export '%nuklear::label-active :%nuklear)
  (export '%nuklear::align :%nuklear)
  (export '%nuklear::state :%nuklear)
  (export '%nuklear::edit-events :%nuklear)
  (export '%nuklear::text-edit-mode :%nuklear)
  (export '%nuklear::close-button :%nuklear)
  (export '%nuklear::oversample-h :%nuklear)
  (export '%nuklear::filter-default :%nuklear)
  (export '%nuklear::chart-add-slot-colored :%nuklear)
  (export '%nuklear::ascent :%nuklear)
  (export '%nuklear::style-push-font :%nuklear)
  (export '%nuklear::handle-id :%nuklear)
  (export '%nuklear::text-undo-record :%nuklear)
  (export '%nuklear::widget-is-hovered :%nuklear)
  (export '%nuklear::chart-end :%nuklear)
  (export '%nuklear::rgb-bv :%nuklear)
  (export '%nuklear::seq :%nuklear)
  (export '%nuklear::list-view-begin :%nuklear)
  (export '%nuklear::sym-right :%nuklear)
  (export '%nuklear::points :%nuklear)
  (export '%nuklear::font-atlas-format :%nuklear)
  (export '%nuklear::bar-filled :%nuklear)
  (export '%nuklear::r :%nuklear)
  (export '%nuklear::draw-list-path-clear :%nuklear)
  (export '%nuklear::rect-size :%nuklear)
  (export '%nuklear::style-pop-flags :%nuklear)
  (export '%nuklear::symbol-active :%nuklear)
  (export '%nuklear::selectable-text :%nuklear)
  (export '%nuklear::font-config :%nuklear)
  (export '%nuklear::node-maximize-button :%nuklear)
  (export '%nuklear::cursor-size :%nuklear)
  (export '%nuklear::prog :%nuklear)
  (export '%nuklear::+pointer-type+ :%nuklear)
  (export '%nuklear::clicked :%nuklear)
  (export '%nuklear::style-cursor :%nuklear)
  (export '%nuklear::init :%nuklear)
  (export '%nuklear::x1 :%nuklear)
  (export '%nuklear::border-cursor :%nuklear)
  (export '%nuklear::y0 :%nuklear)
  (export '%nuklear::combo-item-image-text :%nuklear)
  (export '%nuklear::+undefined+ :%nuklear)
  (export '%nuklear::item-width :%nuklear)
  (export '%nuklear::image-handle :%nuklear)
  (export '%nuklear::layout-row-template-push-variable :%nuklear)
  (export '%nuklear::combo-item-label :%nuklear)
  (export '%nuklear::bar-hover :%nuklear)
  (export '%nuklear::preferred-x :%nuklear)
  (export '%nuklear::hsva-colorf :%nuklear)
  (export '%nuklear::+window-max-name+ :%nuklear)
  (export '%nuklear::b :%nuklear)
  (export '%nuklear::ctx :%nuklear)
  (export '%nuklear::tbl :%nuklear)
  (export '%nuklear::+chart-max-slot+ :%nuklear)
  (export '%nuklear::highlight :%nuklear)
  (export '%nuklear::vec2v :%nuklear)
  (export '%nuklear::combo :%nuklear)
  (export '%nuklear::command-rect :%nuklear)
  (export '%nuklear::popup-border-color :%nuklear)
  (export '%nuklear::has-preferred-x :%nuklear)
  (export '%nuklear::user-font-glyph :%nuklear)
  (export '%nuklear::window-is-any-hovered :%nuklear)
  (export '%nuklear::color-hsv-fv :%nuklear)
  (export '%nuklear::str-append-str-utf8 :%nuklear)
  (export '%nuklear::vertex-layout :%nuklear)
  (export '%nuklear::query :%nuklear)
  (export '%nuklear::hsva-f :%nuklear)
  (export '%nuklear::widget-width :%nuklear)
  (export '%nuklear::str-init-default :%nuklear)
  (export '%nuklear::spacing :%nuklear)
  (export '%nuklear::str-insert-at-rune :%nuklear)
  (export '%nuklear::font-atlas-begin :%nuklear)
  (export '%nuklear::name :%nuklear)
  (export '%nuklear::len :%nuklear)
  (export '%nuklear::rune :%nuklear)
  (export '%nuklear::menu-item-symbol-label :%nuklear)
  (export '%nuklear::color-dv :%nuklear)
  (export '%nuklear::slots :%nuklear)
  (export '%nuklear::command-buffer :%nuklear)
  (export '%nuklear::color-u32 :%nuklear)
  (export '%nuklear::button-image-text-styled :%nuklear)
  (export '%nuklear::fill-polygon :%nuklear)
  (export '%nuklear::hsva-fv :%nuklear)
  (export '%nuklear::str-at-char :%nuklear)
  (export '%nuklear::+int16+ :%nuklear)
  (export '%nuklear::next :%nuklear)
  (export '%nuklear::input-begin :%nuklear)
  (export '%nuklear::button-symbol-label-styled :%nuklear)
  (export '%nuklear::undo :%nuklear)
  (export '%nuklear::null :%nuklear)
  (export '%nuklear::buffer-total :%nuklear)
  (export '%nuklear::utf-decode :%nuklear)
  (export '%nuklear::edit-unfocus :%nuklear)
  (export '%nuklear::rgba-cf :%nuklear)
  (export '%nuklear::select-end :%nuklear)
  (export '%nuklear::layout-space-bounds :%nuklear)
  (export '%nuklear::style-default :%nuklear)
  (export '%nuklear::image-color :%nuklear)
  (export '%nuklear::draw-list-add-image :%nuklear)
  (export '%nuklear::select-symbol-label :%nuklear)
  (export '%nuklear::+max-float-precision+ :%nuklear)
  (export '%nuklear::combo-padding :%nuklear)
  (export '%nuklear::draw-text :%nuklear)
  (export '%nuklear::single-line :%nuklear)
  (export '%nuklear::slider-int :%nuklear)
  (export '%nuklear::input-glyph :%nuklear)
  (export '%nuklear::draw-list-next :%nuklear)
  (export '%nuklear::hover :%nuklear)
  (export '%nuklear::fallback :%nuklear)
  (export '%nuklear::context :%nuklear)
  (export '%nuklear::combo-separator :%nuklear)
  (export '%nuklear::style-push-color :%nuklear)
  (export '%nuklear::page-data :%nuklear)
  (export '%nuklear::window-is-hovered :%nuklear)
  (export '%nuklear::stroke-arc :%nuklear)
  (export '%nuklear::style-push-flags :%nuklear)
  (export '%nuklear::data :%nuklear)
  (export '%nuklear::button-behavior :%nuklear)
  (export '%nuklear::window-get-bounds :%nuklear)
  (export '%nuklear::int :%nuklear)
  (export '%nuklear::current :%nuklear)
  (export '%nuklear::+uint8+ :%nuklear)
  (export '%nuklear::combo-close :%nuklear)
  (export '%nuklear::+api+ :%nuklear)
  (export '%nuklear::combo-item-image-label :%nuklear)
  (export '%nuklear::panel-flags :%nuklear)
  (export '%nuklear::tree-element-push-hashed :%nuklear)
  (export '%nuklear::combobox-separator :%nuklear)
  (export '%nuklear::checkbox :%nuklear)
  (export '%nuklear::%draw-list-end :%nuklear)
  (export '%nuklear::buffer :%nuklear)
  (export '%nuklear::draw-list-add-text :%nuklear)
  (export '%nuklear::command-triangle-filled :%nuklear)
  (export '%nuklear::color-hsv-i :%nuklear)
  (export '%nuklear::selectable-label :%nuklear)
  (export '%nuklear::text-pressed-active :%nuklear)
  (export '%nuklear::menu-button :%nuklear)
  (export '%nuklear::font-atlas-add :%nuklear)
  (export '%nuklear::fill-circle :%nuklear)
  (export '%nuklear::style-header-align :%nuklear)
  (export '%nuklear::menu-begin-image-text :%nuklear)
  (export '%nuklear::cmd-count :%nuklear)
  (export '%nuklear::pressed :%nuklear)
  (export '%nuklear::window-set-focus :%nuklear)
  (export '%nuklear::configuration-stacks :%nuklear)
  (export '%nuklear::font-atlas-init :%nuklear)
  (export '%nuklear::selected-normal :%nuklear)
  (export '%nuklear::modify :%nuklear)
  (export '%nuklear::recta :%nuklear)
  (export '%nuklear::window-close :%nuklear)
  (export '%nuklear::chart-begin :%nuklear)
  (export '%nuklear::input-key :%nuklear)
  (export '%nuklear::anti-aliasing :%nuklear)
  (export '%nuklear::chart-push-slot :%nuklear)
  (export '%nuklear::font-atlas :%nuklear)
  (export '%nuklear::combo-begin-image-text :%nuklear)
  (export '%nuklear::button-label :%nuklear)
  (export '%nuklear::menu-padding :%nuklear)
  (export '%nuklear::config-stack-user-font :%nuklear)
  (export '%nuklear::menu-item-image-label :%nuklear)
  (export '%nuklear::fonts :%nuklear)
  (export '%nuklear::utf-encode :%nuklear)
  (export '%nuklear::check-flags-label :%nuklear)
  (export '%nuklear::needed :%nuklear)
  (export '%nuklear::vec2 :%nuklear)
  (export '%nuklear::checkbox-label :%nuklear)
  (export '%nuklear::circle-vtx :%nuklear)
  (export '%nuklear::colorf :%nuklear)
  (export '%nuklear::inc-button :%nuklear)
  (export '%nuklear::window-get-content-region-size :%nuklear)
  (export '%nuklear::scroll-delta :%nuklear)
  (export '%nuklear::draw-index :%nuklear)
  (export '%nuklear::group-padding :%nuklear)
  (export '%nuklear::plot-function :%nuklear)
  (export '%nuklear::menu-begin-text :%nuklear)
  (export '%nuklear::copy :%nuklear)
  (export '%nuklear::handle-ptr :%nuklear)
  (export '%nuklear::style-colors :%nuklear)
  (export '%nuklear::command-list-next :%nuklear)
  (export '%nuklear::color-hsva-fv :%nuklear)
  (export '%nuklear::font-glyph :%nuklear)
  (export '%nuklear::window-flags :%nuklear)
  (export '%nuklear::height :%nuklear)
  (export '%nuklear::handle :%nuklear)
  (export '%nuklear::user-font :%nuklear)
  (export '%nuklear::+utf-size+ :%nuklear)
  (export '%nuklear::bottom :%nuklear)
  (export '%nuklear::page :%nuklear)
  (export '%nuklear::font-atlas-cleanup :%nuklear)
  (export '%nuklear::values :%nuklear)
  (export '%nuklear::minimize-button :%nuklear)
  (export '%nuklear::bar-active :%nuklear)
  (export '%nuklear::range :%nuklear)
  (export '%nuklear::color-hsva-f :%nuklear)
  (export '%nuklear::cursor-rounding :%nuklear)
  (export '%nuklear::has-scrolling :%nuklear)
  (export '%nuklear::hsva-colorfv :%nuklear)
  (export '%nuklear::uv :%nuklear)
  (export '%nuklear::menu-close :%nuklear)
  (export '%nuklear::select-image-text :%nuklear)
  (export '%nuklear::str-insert-str-char :%nuklear)
  (export '%nuklear::command-triangle :%nuklear)
  (export '%nuklear::draw-list-path-arc-to :%nuklear)
  (export '%nuklear::filter-oct :%nuklear)
  (export '%nuklear::style-item-hide :%nuklear)
  (export '%nuklear::clip-rect :%nuklear)
  (export '%nuklear::style-combo :%nuklear)
  (export '%nuklear::y1 :%nuklear)
  (export '%nuklear::color-picker :%nuklear)
  (export '%nuklear::item-offset :%nuklear)
  (export '%nuklear::style-item-color :%nuklear)
  (export '%nuklear::color-hsv-iv :%nuklear)
  (export '%nuklear::popup-close :%nuklear)
  (export '%nuklear::address :%nuklear)
  (export '%nuklear::layout-row-end :%nuklear)
  (export '%nuklear::+single-file+ :%nuklear)
  (export '%nuklear::color-hsva-iv :%nuklear)
  (export '%nuklear::strtof :%nuklear)
  (export '%nuklear::style-push-vec2 :%nuklear)
  (export '%nuklear::ctrl :%nuklear)
  (export '%nuklear::tree-depth :%nuklear)
  (export '%nuklear::merge-mode :%nuklear)
  (export '%nuklear::orientation :%nuklear)
  (export '%nuklear::base :%nuklear)
  (export '%nuklear::offset-y :%nuklear)
  (export '%nuklear::+size-type+ :%nuklear)
  (export '%nuklear::font-atlas-add-from-file :%nuklear)
  (export '%nuklear::scrollh :%nuklear)
  (export '%nuklear::menu-begin-symbol :%nuklear)
  (export '%nuklear::undo-rec :%nuklear)
  (export '%nuklear::select-start :%nuklear)
  (export '%nuklear::scrollbar-hiding-timer :%nuklear)
  (export '%nuklear::property :%nuklear)
  (export '%nuklear::global-alpha :%nuklear)
  (export '%nuklear::paste :%nuklear)
  (export '%nuklear::draw-list-fill-poly-convex :%nuklear)
  (export '%nuklear::popup-begin :%nuklear)
  (export '%nuklear::hsv-fv :%nuklear)
  (export '%nuklear::menu-border :%nuklear)
  (export '%nuklear::edit-state :%nuklear)
  (export '%nuklear::ranges :%nuklear)
  (export '%nuklear::menu-item-symbol-text :%nuklear)
  (export '%nuklear::input :%nuklear)
  (export '%nuklear::stroke-circle :%nuklear)
  (export '%nuklear::input-is-mouse-prev-hovering-rect :%nuklear)
  (export '%nuklear::filter :%nuklear)
  (export '%nuklear::button-symbol-styled :%nuklear)
  (export '%nuklear::menu-begin-image-label :%nuklear)
  (export '%nuklear::str-delete-runes :%nuklear)
  (export '%nuklear::property-float :%nuklear)
  (export '%nuklear::menu-item-text :%nuklear)
  (export '%nuklear::option :%nuklear)
  (export '%nuklear::rgba-u32 :%nuklear)
  (export '%nuklear::short :%nuklear)
  (export '%nuklear::delta-time-seconds :%nuklear)
  (export '%nuklear::rectv :%nuklear)
  (export '%nuklear::strtoi :%nuklear)
  (export '%nuklear::ttf-size :%nuklear)
  (export '%nuklear::stroke-triangle :%nuklear)
  (export '%nuklear::p :%nuklear)
  (export '%nuklear::config-stack-user-font-element :%nuklear)
  (export '%nuklear::begin-titled :%nuklear)
  (export '%nuklear::normal-active :%nuklear)
  (export '%nuklear::clicked-pos :%nuklear)
  (export '%nuklear::x :%nuklear)
  (export '%nuklear::total-height :%nuklear)
  (export '%nuklear::line-thickness :%nuklear)
  (export '%nuklear::con-count :%nuklear)
  (export '%nuklear::filter-float :%nuklear)
  (export '%nuklear::scrollbar :%nuklear)
  (export '%nuklear::style-progress :%nuklear)
  (export '%nuklear::combo-begin-symbol :%nuklear)
  (export '%nuklear::combo-item-text :%nuklear)
  (export '%nuklear::list-view :%nuklear)
  (export '%nuklear::rectiv :%nuklear)
  (export '%nuklear::button-push-behavior :%nuklear)
  (export '%nuklear::sym-left :%nuklear)
  (export '%nuklear::window-get-scroll :%nuklear)
  (export '%nuklear::undo-char-point :%nuklear)
  (export '%nuklear::group-border-color :%nuklear)
  (export '%nuklear::sym-active :%nuklear)
  (export '%nuklear::min-size :%nuklear)
  (export '%nuklear::rect :%nuklear)
  (export '%nuklear::config-stack-color-element :%nuklear)
  (export '%nuklear::input-has-mouse-click-in-rect :%nuklear)
  (export '%nuklear::draw-list-path-arc-to-fast :%nuklear)
  (export '%nuklear::str-at-const :%nuklear)
  (export '%nuklear::str-get-const :%nuklear)
  (export '%nuklear::edit-types :%nuklear)
  (export '%nuklear::combo-item-symbol-label :%nuklear)
  (export '%nuklear::combo-begin-image :%nuklear)
  (export '%nuklear::triangle-from-direction :%nuklear)
  (export '%nuklear::font-atlas-add-compressed :%nuklear)
  (export '%nuklear::draw-list-stroke-circle :%nuklear)
  (export '%nuklear::selectable-symbol-label :%nuklear)
  (export '%nuklear::window-find :%nuklear)
  (export '%nuklear::widget-bounds :%nuklear)
  (export '%nuklear::button-image :%nuklear)
  (export '%nuklear::text-active :%nuklear)
  (export '%nuklear::window-is-closed :%nuklear)
  (export '%nuklear::font :%nuklear)
  (export '%nuklear::draw-end :%nuklear)
  (export '%nuklear::draw-list-begin :%nuklear)
  (export '%nuklear::input-mouse-clicked :%nuklear)
  (export '%nuklear::button-color :%nuklear)
  (export '%nuklear::x0 :%nuklear)
  (export '%nuklear::hash :%nuklear)
  (export '%nuklear::menu-begin-image :%nuklear)
  (export '%nuklear::+storage+ :%nuklear)
  (export '%nuklear::contextual-close :%nuklear)
  (export '%nuklear::text-edit :%nuklear)
  (export '%nuklear::active-con :%nuklear)
  (export '%nuklear::config-stack-style-item :%nuklear)
  (export '%nuklear::slide-float :%nuklear)
  (export '%nuklear::scroll-value :%nuklear)
  (export '%nuklear::command-clipping :%nuklear)
  (export '%nuklear::ptr :%nuklear)
  (export '%nuklear::+input-max+ :%nuklear)
  (export '%nuklear::slider :%nuklear)
  (export '%nuklear::normal :%nuklear)
  (export '%nuklear::use-clipping :%nuklear)
  (export '%nuklear::oversample-v :%nuklear)
  (export '%nuklear::command-polygon :%nuklear)
  (export '%nuklear::subimage-ptr :%nuklear)
  (export '%nuklear::undo-char :%nuklear)
  (export '%nuklear::style-window-header :%nuklear)
  (export '%nuklear::button-image-label :%nuklear)
  (export '%nuklear::textedit-free :%nuklear)
  (export '%nuklear::mouse-button :%nuklear)
  (export '%nuklear::command-polygon-filled :%nuklear)
  (export '%nuklear::config-stack-flags-element :%nuklear)
  (export '%nuklear::text-hover-active :%nuklear)
  (export '%nuklear::color-hex-rgba :%nuklear)
  (export '%nuklear::layout-row :%nuklear)
  (export '%nuklear::style-button :%nuklear)
  (export '%nuklear::length :%nuklear)
  (export '%nuklear::contextual-item-image-text :%nuklear)
  (export '%nuklear::text-normal :%nuklear)
  (export '%nuklear::layout-set-min-row-height :%nuklear)
  (export '%nuklear::+include-default-allocator+ :%nuklear)
  (export '%nuklear::text-edit-type :%nuklear)
  (export '%nuklear::popup-type :%nuklear)
  (export '%nuklear::button-set-behavior :%nuklear)
  (export '%nuklear::collapse-states :%nuklear)
  (export '%nuklear::style-selectable :%nuklear)
  (export '%nuklear::str-insert-str-utf8 :%nuklear)
  (export '%nuklear::label-colored :%nuklear)
  (export '%nuklear::contextual-begin :%nuklear)
  (export '%nuklear::vectors :%nuklear)
  (export '%nuklear::filter-binary :%nuklear)
  (export '%nuklear::buffer-free :%nuklear)
  (export '%nuklear::menu-end :%nuklear)
  (export '%nuklear::contextual-item-text :%nuklear)
  (export '%nuklear::style-pop-color :%nuklear)
  (export '%nuklear::input-is-mouse-pressed :%nuklear)
  (export '%nuklear::str-append-str-char :%nuklear)
  (export '%nuklear::input-any-mouse-click-in-rect :%nuklear)
  (export '%nuklear::pos :%nuklear)
  (export '%nuklear::sel-start :%nuklear)
  (export '%nuklear::font-atlas-init-custom :%nuklear)
  (export '%nuklear::init-custom :%nuklear)
  (export '%nuklear::cursor :%nuklear)
  (export '%nuklear::tab-minimize-button :%nuklear)
  (export '%nuklear::style-load-cursor :%nuklear)
  (export '%nuklear::pan :%nuklear)
  (export '%nuklear::popup-state :%nuklear)
  (export '%nuklear::button-behaviors :%nuklear)
  (export '%nuklear::key :%nuklear)
  (export '%nuklear::+include-default-font+ :%nuklear)
  (export '%nuklear::input-is-mouse-click-down-in-rect :%nuklear)
  (export '%nuklear::+lib+ :%nuklear)
  (export '%nuklear::+textedit-undostatecount+ :%nuklear)
  (export '%nuklear::fallback-codepoint :%nuklear)
  (export '%nuklear::+vertex-layout-end+ :%nuklear)
  (export '%nuklear::murmur-hash :%nuklear)
  (export '%nuklear::prev :%nuklear)
  (export '%nuklear::rounding :%nuklear)
  (export '%nuklear::index :%nuklear)
  (export '%nuklear::group-get-scroll :%nuklear)
  (export '%nuklear::style-item-type :%nuklear)
  (export '%nuklear::combo-item-symbol-text :%nuklear)
  (export '%nuklear::buffer-info :%nuklear)
  (export '%nuklear::dec-button :%nuklear)
  (export '%nuklear::plot :%nuklear)
  (export '%nuklear::rgb-f :%nuklear)
  (export '%nuklear::colorf-hsva-f :%nuklear)
  (export '%nuklear::color-fv :%nuklear)
  (export '%nuklear::allocated :%nuklear)
  (export '%nuklear::font-default-glyph-ranges :%nuklear)
  (export '%nuklear::tooltip-begin :%nuklear)
  (export '%nuklear::width :%nuklear)
  (export '%nuklear::cursors :%nuklear)
  (export '%nuklear::button-pop-behavior :%nuklear)
  (export '%nuklear::fixed-background :%nuklear)
  (export '%nuklear::command-arc :%nuklear)
  (export '%nuklear::propertyi :%nuklear)
  (export '%nuklear::layout-reset-min-row-height :%nuklear)
  (export '%nuklear::color-hsv-b :%nuklear)
  (export '%nuklear::color-hsva-i :%nuklear)
  (export '%nuklear::at-x :%nuklear)
  (export '%nuklear::selectable :%nuklear)
  (export '%nuklear::templates :%nuklear)
  (export '%nuklear::button-image-label-styled :%nuklear)
  (export '%nuklear::type :%nuklear)
  (export '%nuklear::end :%nuklear)
  (export '%nuklear::%draw-list-begin :%nuklear)
  (export '%nuklear::push-custom :%nuklear)
  (export '%nuklear::rgb-hex :%nuklear)
  (export '%nuklear::flags :%nuklear)
  (export '%nuklear::contextual-button :%nuklear)
  (export '%nuklear::push-scissor :%nuklear)
  (export '%nuklear::menu-begin-label :%nuklear)
  (export '%nuklear::widget-states :%nuklear)
  (export '%nuklear::draw-list-stroke-rect :%nuklear)
  (export '%nuklear::input-scroll :%nuklear)
  (export '%nuklear::redo-char-point :%nuklear)
  (export '%nuklear::alloc :%nuklear)
  (export '%nuklear::a :%nuklear)
  (export '%nuklear::str-append-text-runes :%nuklear)
  (export '%nuklear::border-color :%nuklear)
  (export '%nuklear::path-offset :%nuklear)
  (export '%nuklear::tooltip-border-color :%nuklear)
  (export '%nuklear::command-custom-callback :%nuklear)
  (export '%nuklear::textedit-delete-selection :%nuklear)
  (export '%nuklear::row :%nuklear)
  (export '%nuklear::group-scrolled-offset-begin :%nuklear)
  (export '%nuklear::+int32+ :%nuklear)
  (export '%nuklear::window-get-size :%nuklear)
  (export '%nuklear::tree-state-image-push :%nuklear)
  (export '%nuklear::text-pressed :%nuklear)
  (export '%nuklear::+float+ :%nuklear)
  (export '%nuklear::layout-space-rect-to-local :%nuklear)
  (export '%nuklear::window-is-active :%nuklear)
  (export '%nuklear::heading :%nuklear)
  (export '%nuklear::default-font :%nuklear)
  (export '%nuklear::combobox-callback :%nuklear)
  (export '%nuklear::command-polyline :%nuklear)
  (export '%nuklear::chart-slot :%nuklear)
  (export '%nuklear::option-label :%nuklear)
  (export '%nuklear::textedit-text :%nuklear)
  (export '%nuklear::style-slide :%nuklear)
  (export '%nuklear::+float-stack-size+ :%nuklear)
  (export '%nuklear::buffer-clear :%nuklear)
  (export '%nuklear::style-pop-vec2 :%nuklear)
  (export '%nuklear::right :%nuklear)
  (export '%nuklear::grab :%nuklear)
  (export '%nuklear::+font-stack-size+ :%nuklear)
  (export '%nuklear::grow-factor :%nuklear)
  (export '%nuklear::image-ptr :%nuklear)
  (export '%nuklear::ttf-blob :%nuklear)
  (export '%nuklear::char-storage :%nuklear)
  (export '%nuklear::bar-normal :%nuklear)
  (export '%nuklear::combo-border :%nuklear)
  (export '%nuklear::style-set-cursor :%nuklear)
  (export '%nuklear::draw-list-path-fill :%nuklear)
  (export '%nuklear::utf-len :%nuklear)
  (export '%nuklear::color-hsv-bv :%nuklear)
  (export '%nuklear::draw-list-stroke-poly-line :%nuklear)
  (export '%nuklear::curve-segment-count :%nuklear)
  (export '%nuklear::+int8+ :%nuklear)
  (export '%nuklear::panel-row-layout-type :%nuklear)
  (export '%nuklear::selected-text-hover :%nuklear)
  (export '%nuklear::region :%nuklear)
  (export '%nuklear::draw-list-fill-rect-multi-color :%nuklear)
  (export '%nuklear::checkbox-flags-label :%nuklear)
  (export '%nuklear::input-is-mouse-click-in-rect :%nuklear)
  (export '%nuklear::style-item-image :%nuklear)
  (export '%nuklear::scrollv :%nuklear)
  (export '%nuklear::group-scrolled-end :%nuklear)
  (export '%nuklear::codepoint :%nuklear)
  (export '%nuklear::glyph-offset :%nuklear)
  (export '%nuklear::show-buttons :%nuklear)
  (export '%nuklear::left :%nuklear)
  (export '%nuklear::buffer-reset :%nuklear)
  (export '%nuklear::init-fixed :%nuklear)
  (export '%nuklear::+true+ :%nuklear)
  (export '%nuklear::callback :%nuklear)
  (export '%nuklear::pixel-snap :%nuklear)
  (export '%nuklear::button-text :%nuklear)
  (export '%nuklear::plugin-alloc :%nuklear)
  (export '%nuklear::bar-height :%nuklear)
  (export '%nuklear::panel :%nuklear)
  (export '%nuklear::cursor-active :%nuklear)
  (export '%nuklear::input-is-key-down :%nuklear)
  (export '%nuklear::popup-end :%nuklear)
  (export '%nuklear::bounds :%nuklear)
  (export '%nuklear::size :%nuklear)
  (export '%nuklear::chart-push :%nuklear)
  (export '%nuklear::combo-string :%nuklear)
  (export '%nuklear::contextual-padding :%nuklear)
  (export '%nuklear::font-coord-type :%nuklear)
  (export '%nuklear::config-stack-style-item-element :%nuklear)
  (export '%nuklear::+max-layout-row-template-columns+ :%nuklear)
  (export '%nuklear::command :%nuklear)
  (export '%nuklear::label-padding :%nuklear)
  (export '%nuklear::tex-width :%nuklear)
  (export '%nuklear::buffer-mark :%nuklear)
  (export '%nuklear::combo-begin-color :%nuklear)
  (export '%nuklear::symbol-type :%nuklear)
  (export '%nuklear::str-insert-text-utf8 :%nuklear)
  (export '%nuklear::+utf-invalid+ :%nuklear)
  (export '%nuklear::draw-list-fill-circle :%nuklear)
  (export '%nuklear::old :%nuklear)
  (export '%nuklear::padding1 :%nuklear)
  (export '%nuklear::cursor-text-normal :%nuklear)
  (export '%nuklear::strmatch-fuzzy-text :%nuklear)
  (export '%nuklear::item-height :%nuklear)
  (export '%nuklear::text-alignment :%nuklear)
  (export '%nuklear::buffer-init :%nuklear)
  (export '%nuklear::cursor-border :%nuklear)
  (export '%nuklear::style-scrollbar :%nuklear)
  (export '%nuklear::last :%nuklear)
  (export '%nuklear::command-rect-multi-color :%nuklear)
  (export '%nuklear::draw-list-stroke-line :%nuklear)
  (export '%nuklear::buffer-init-default :%nuklear)
  (export '%nuklear::+nuklear-h-+ :%nuklear)
  (export '%nuklear::menu-begin-symbol-text :%nuklear)
  (export '%nuklear::style-pop-float :%nuklear)
  (export '%nuklear::buffer-push :%nuklear)
  (export '%nuklear::filled :%nuklear)
  (export '%nuklear::popup-set-scroll :%nuklear)
  (export '%nuklear::window-get-panel :%nuklear)
  (export '%nuklear::layout-row-dynamic :%nuklear)
  (export '%nuklear::str-insert-str-runes :%nuklear)
  (export '%nuklear::cursor-visible :%nuklear)
  (export '%nuklear::buffer-memory :%nuklear)
  (export '%nuklear::input-motion :%nuklear)
  (export '%nuklear::propertyd :%nuklear)
  (export '%nuklear::undo-point :%nuklear)
  (export '%nuklear::recti :%nuklear)
  (export '%nuklear::path-count :%nuklear)
  (export '%nuklear::font-atlas-init-default :%nuklear)
  (export '%nuklear::contextual-item-label :%nuklear)
  (export '%nuklear::label-wrap :%nuklear)
  (export '%nuklear::old-value :%nuklear)
  (export '%nuklear::slot :%nuklear)
  (export '%nuklear::cap :%nuklear)
  (export '%nuklear::edit-buffer :%nuklear)
  (export '%nuklear::style :%nuklear)
  (export '%nuklear::+button-behavior-stack-size+ :%nuklear)
  (export '%nuklear::combobox :%nuklear)
  (export '%nuklear::overlay :%nuklear)
  (export '%nuklear::text-undo-state :%nuklear)
  (export '%nuklear::label-normal :%nuklear)
  (export '%nuklear::+flags-stack-size+ :%nuklear)
  (export '%nuklear::filter-decimal :%nuklear)
  (export '%nuklear::mouse :%nuklear)
  (export '%nuklear::tables :%nuklear)
  (export '%nuklear::stroke-line :%nuklear)
  (export '%nuklear::style-hide-cursor :%nuklear)
  (export '%nuklear::command-scissor :%nuklear)
  (export '%nuklear::line-aa :%nuklear)
  (export '%nuklear::contextual-end :%nuklear)
  (export '%nuklear::popup-padding :%nuklear)
  (export '%nuklear::style-item-data :%nuklear)
  (export '%nuklear::plugin-paste :%nuklear)
  (export '%nuklear::style-toggle :%nuklear)
  (export '%nuklear::contextual-item-symbol-text :%nuklear)
  (export '%nuklear::draw-list-stroke-triangle :%nuklear)
  (export '%nuklear::row-padding :%nuklear)
  (export '%nuklear::stricmpn :%nuklear)
  (export '%nuklear::window-set-position :%nuklear)
  (export '%nuklear::pressed-active :%nuklear)
  (export '%nuklear::command-circle-filled :%nuklear)
  (export '%nuklear::floats :%nuklear)
  (export '%nuklear::draw-list-stroke-curve :%nuklear)
  (export '%nuklear::option-text :%nuklear)
  (export '%nuklear::menu :%nuklear)
  (export '%nuklear::color-cf :%nuklear)
  (export '%nuklear::tree-state-push :%nuklear)
  (export '%nuklear::allocation-type :%nuklear)
  (export '%nuklear::command-line :%nuklear)
  (export '%nuklear::button-symbol-text :%nuklear)
  (export '%nuklear::combo-count :%nuklear)
  (export '%nuklear::subimage-id :%nuklear)
  (export '%nuklear::input-is-key-pressed :%nuklear)
  (export '%nuklear::cursor-at-end-of-line :%nuklear)
  (export '%nuklear::draw-command :%nuklear)
  (export '%nuklear::style-load-all-cursors :%nuklear)
  (export '%nuklear::select-image-label :%nuklear)
  (export '%nuklear::rgb-iv :%nuklear)
  (export '%nuklear::combo-border-color :%nuklear)
  (export '%nuklear::top :%nuklear)
  (export '%nuklear::vec2iv :%nuklear)
  (export '%nuklear::cmd-offset :%nuklear)
  (export '%nuklear::hsv-f :%nuklear)
  (export '%nuklear::id :%nuklear)
  (export '%nuklear::style-from-table :%nuklear)
  (export '%nuklear::property-int :%nuklear)
  (export '%nuklear::panel-type :%nuklear)
  (export '%nuklear::grabbed :%nuklear)
  (export '%nuklear::str-rune-at :%nuklear)
  (export '%nuklear::str-append-text-utf8 :%nuklear)
  (export '%nuklear::contextual-item-image-label :%nuklear)
  (export '%nuklear::sym-maximize :%nuklear)
  (export '%nuklear::indent :%nuklear)
  (export '%nuklear::elements :%nuklear)
  (export '%nuklear::group-border :%nuklear)
  (export '%nuklear::u1 :%nuklear)
  (export '%nuklear::max-x :%nuklear)
  (export '%nuklear::draw-list-fill-triangle :%nuklear)
  (export '%nuklear::config-stack-flags :%nuklear)
  (export '%nuklear::draw-list :%nuklear)
  (export '%nuklear::button-text-styled :%nuklear)
  (export '%nuklear::%draw-list-next :%nuklear)
  (export '%nuklear::+color-stack-size+ :%nuklear)
  (export '%nuklear::layout-row-push :%nuklear)
  (export '%nuklear::clipboard :%nuklear)
  (export '%nuklear::popup-border :%nuklear)
  (export '%nuklear::inc-symbol :%nuklear)
  (export '%nuklear::label-colored-wrap :%nuklear)
  (export '%nuklear::scroll :%nuklear)
  (export '%nuklear::contextual-border-color :%nuklear)
  (export '%nuklear::subimage-handle :%nuklear)
  (export '%nuklear::window-get-content-region-max :%nuklear)
  (export '%nuklear::widget-fitting :%nuklear)
  (export '%nuklear::elem-count :%nuklear)
  (export '%nuklear::convert-config :%nuklear)
  (export '%nuklear::command-circle :%nuklear)
  (export '%nuklear::symbol-normal :%nuklear)
  (export '%nuklear::edit-string :%nuklear)
  (export '%nuklear::rgba-bv :%nuklear)
  (export '%nuklear::color-hex-rgb :%nuklear)
  (export '%nuklear::edit :%nuklear)
  (export '%nuklear::page-count :%nuklear)
  (export '%nuklear::font-atlas-add-compressed-base85 :%nuklear)
  (export '%nuklear::selectable-image-label :%nuklear)
  (export '%nuklear::rgb-fv :%nuklear)
  (export '%nuklear::command-rect-filled :%nuklear)
  (export '%nuklear::+false+ :%nuklear)
  (export '%nuklear::border :%nuklear)
  (export '%nuklear::label-hover :%nuklear)
  (export '%nuklear::+include-standard-io+ :%nuklear)
  (export '%nuklear::menu-border-color :%nuklear)
  (export '%nuklear::tab-maximize-button :%nuklear)
  (export '%nuklear::chart-add-slot :%nuklear)
  (export '%nuklear::uchar :%nuklear)
  (export '%nuklear::popup-get-scroll :%nuklear)
  (export '%nuklear::popup :%nuklear)
  (export '%nuklear::pixel :%nuklear)
  (export '%nuklear::menu-item-image-text :%nuklear)
  (export '%nuklear::combo-begin-symbol-text :%nuklear)
  (export '%nuklear::rounding-cursor :%nuklear)
  (export '%nuklear::+include-fixed-types+ :%nuklear)
  (export '%nuklear::layout-row-template-push-static :%nuklear)
  (export '%nuklear::img :%nuklear)
  (export '%nuklear::foreground :%nuklear)
  (export '%nuklear::hsva :%nuklear)
  (export '%nuklear::checkbox-flags-text :%nuklear)
  (export '%nuklear::text-background :%nuklear)
  (export '%nuklear::input-button :%nuklear)
  (export '%nuklear::button :%nuklear)
  (export '%nuklear::c :%nuklear)
  (export '%nuklear::+value-page-capacity+ :%nuklear)
  (export '%nuklear::textedit-delete :%nuklear)
  (export '%nuklear::stacks :%nuklear)
  (export '%nuklear::combo-begin-label :%nuklear)
  (export '%nuklear::window-is-hidden :%nuklear)
  (export '%nuklear::window-show-if :%nuklear)
  (export '%nuklear::image-id :%nuklear)
  (export '%nuklear::popup-buffer :%nuklear)
  (export '%nuklear::menu-item-label :%nuklear)
  (export '%nuklear::fill-triangle :%nuklear)
  (export '%nuklear::str-remove-runes :%nuklear)
  (export '%nuklear::strfilter :%nuklear)
  (export '%nuklear::command-type :%nuklear)
  (export '%nuklear::cursor-last :%nuklear)
  (export '%nuklear::memory :%nuklear)
  (export '%nuklear::select-label :%nuklear)
  (export '%nuklear::str-insert-text-char :%nuklear)
  (export '%nuklear::utf-at :%nuklear)
  (export '%nuklear::window-get-canvas :%nuklear)
  (export '%nuklear::arc-segment-count :%nuklear)
  (export '%nuklear::str-clear :%nuklear)
  (export '%nuklear::offset :%nuklear)
  (export '%nuklear::buffer-allocation-type :%nuklear)
  (export '%nuklear::combo-end :%nuklear)
  (export '%nuklear::selectable-symbol-text :%nuklear)
  (export '%nuklear::config-stack-color :%nuklear)
  (export '%nuklear::config-stack-button-behavior-element :%nuklear)
  (export '%nuklear::rect-pos :%nuklear)
  (export '%nuklear::table-count :%nuklear)
  (export '%nuklear::radio-label :%nuklear)
  (export '%nuklear::hover-active :%nuklear)
  (export '%nuklear::keys :%nuklear)
  (export '%nuklear::convert-result :%nuklear)
  (export '%nuklear::str-init-fixed :%nuklear)
  (export '%nuklear::propertyf :%nuklear)
  (export '%nuklear::draw-begin :%nuklear)
  (export '%nuklear::style-tab :%nuklear)
  (export '%nuklear::plugin-filter :%nuklear)
  (export '%nuklear::text-len :%nuklear)
  (export '%nuklear::max :%nuklear)
  (export '%nuklear::buffer-memory-const :%nuklear)
  (export '%nuklear::button-symbol-label :%nuklear)
  (export '%nuklear::check-flags-text :%nuklear)
  (export '%nuklear::redo-point :%nuklear)
  (export '%nuklear::last-widget-state :%nuklear)
  (export '%nuklear::vec2i :%nuklear)
  (export '%nuklear::stroke-polygon :%nuklear)
  (export '%nuklear::+intern+ :%nuklear)
  (export '%nuklear::cursor-text-hover :%nuklear)
  (export '%nuklear::widget-layout-states :%nuklear)
  (export '%nuklear::texture :%nuklear)
  (export '%nuklear::vertex-size :%nuklear)
  (export '%nuklear::font-find-glyph :%nuklear)
  (export '%nuklear::font-atlas-end :%nuklear)
  (export '%nuklear::touch-padding :%nuklear)
  (export '%nuklear::selected-color :%nuklear)
  (export '%nuklear::button-symbol-text-styled :%nuklear)
  (export '%nuklear::combo-begin-symbol-label :%nuklear)
  (export '%nuklear::style-push-float :%nuklear)
  (export '%nuklear::colors :%nuklear)
  (export '%nuklear::style-chart :%nuklear)
  (export '%nuklear::widget-has-mouse-click-down :%nuklear)
  (export '%nuklear::vertices :%nuklear)
  (export '%nuklear::tex-height :%nuklear)
  (export '%nuklear::colorf-hsva-fv :%nuklear)
  (export '%nuklear::font-atlas-add-from-memory :%nuklear)
  (export '%nuklear::list-view-end :%nuklear)
  (export '%nuklear::input-has-mouse-click :%nuklear)
  (export '%nuklear::str-remove-chars :%nuklear)
  (export '%nuklear::+pi+ :%nuklear)
  (export '%nuklear::insert-length :%nuklear)
  (export '%nuklear::background :%nuklear)
  (export '%nuklear::style-get-color-by-name :%nuklear)
  (export '%nuklear::buf :%nuklear)
  (export '%nuklear::config :%nuklear)
  (export '%nuklear::attribute :%nuklear)
  (export '%nuklear::tree-element-image-push-hashed :%nuklear)
  (export '%nuklear::image-is-subimage :%nuklear)
  (export '%nuklear::style-slider :%nuklear)
  (export '%nuklear::buffer-marker :%nuklear)
  (export '%nuklear::min-row-height-padding :%nuklear)
  (export '%nuklear::tooltip :%nuklear)
  (export '%nuklear::draw-list-path-line-to :%nuklear)
  (export '%nuklear::layout-format :%nuklear)
  (export '%nuklear::parent :%nuklear)
  (export '%nuklear::text-wrap :%nuklear)
  (export '%nuklear::show-states :%nuklear)
  (export '%nuklear::min-height :%nuklear)
  (export '%nuklear::initialized :%nuklear)
  (export '%nuklear::style-pop-font :%nuklear)
  (export '%nuklear::color-hsva-bv :%nuklear)
  (export '%nuklear::sym-minimize :%nuklear)
  (export '%nuklear::window-has-focus :%nuklear)
  (export '%nuklear::row-layout :%nuklear)
  (export '%nuklear::item-is-any-active :%nuklear)
  (export '%nuklear::rgba-f :%nuklear)
  (export '%nuklear::free :%nuklear)
  (export '%nuklear::color-f :%nuklear)
  (export '%nuklear::y :%nuklear)
  (export '%nuklear::chart-type :%nuklear)
  (export '%nuklear::at-y :%nuklear)
  (export '%nuklear::input-is-mouse-hovering-rect :%nuklear)
  (export '%nuklear::circle-segment-count :%nuklear)
  (export '%nuklear::tree-image-push-hashed :%nuklear)
  (export '%nuklear::check-label :%nuklear)
  (export '%nuklear::input-char :%nuklear)
  (export '%nuklear::window-get-position :%nuklear)
  (export '%nuklear::widget-size :%nuklear)
  (export '%nuklear::color-pick :%nuklear)
  (export '%nuklear::textedit-init-fixed :%nuklear)
  (export '%nuklear::u0 :%nuklear)
  (export '%nuklear::strmatch-fuzzy-string :%nuklear)
  (export '%nuklear::cursor-hover :%nuklear)
  (export '%nuklear::style-item :%nuklear)
  (export '%nuklear::w :%nuklear)
  (export '%nuklear::mode :%nuklear)
  (export '%nuklear::input-is-mouse-released :%nuklear)
  (export '%nuklear::str-at-rune :%nuklear)
  (export '%nuklear::plugin-free :%nuklear)
  (export '%nuklear::chart-event :%nuklear)
  (export '%nuklear::input-unicode :%nuklear)
  (export '%nuklear::widget-is-mouse-clicked :%nuklear)
  (export '%nuklear::str-init :%nuklear)
  (export '%nuklear::get-null-rect :%nuklear)
  (export '%nuklear::select-text :%nuklear)
  (export '%nuklear::draw-vertex-layout-attribute :%nuklear)
  (export '%nuklear::slide-int :%nuklear)
  (export '%nuklear::draw-list-path-rect-to :%nuklear)
  (export '%nuklear::byte :%nuklear)
  (export '%nuklear::property-double :%nuklear)
  (export '%nuklear::textedit-undo :%nuklear)
  (export '%nuklear::node-minimize-button :%nuklear)
  (export '%nuklear::text-normal-active :%nuklear)
  (export '%nuklear::combobox-string :%nuklear)
  (export '%nuklear::freelist :%nuklear)
  (export '%nuklear::draw-list-path-stroke :%nuklear)
  (export '%nuklear::h :%nuklear)
  (export '%nuklear::style-set-font :%nuklear)
  (export '%nuklear::layout-space-begin :%nuklear)
  (export '%nuklear::slider-float :%nuklear)
  (export '%nuklear::draw-null-texture :%nuklear)
  (export '%nuklear::style-edit :%nuklear)
  (export '%nuklear::layout-space-rect-to-screen :%nuklear)
  (export '%nuklear::chart-begin-colored :%nuklear)
  (export '%nuklear::draw-list-fill-rect :%nuklear)
  (export '%nuklear::strtod :%nuklear)
  (export '%nuklear::offset-x :%nuklear)
  (export '%nuklear::convert :%nuklear)
  (export '%nuklear::str-delete-chars :%nuklear)
  (export '%nuklear::char :%nuklear)
  (export '%nuklear::padding :%nuklear)
  (export '%nuklear::tab :%nuklear)
  (export '%nuklear::command-text :%nuklear)
  (export '%nuklear::stroke-polyline :%nuklear)
  (export '%nuklear::fill-rect :%nuklear)
  (export '%nuklear::config-stack-vec2-element :%nuklear)
  (export '%nuklear::buttons :%nuklear)
  (export '%nuklear::font-num :%nuklear)
  (export '%nuklear::allocator :%nuklear)
  (export '%nuklear::where :%nuklear)
  (export '%nuklear::window-set-scroll :%nuklear)
  (export '%nuklear::hsv :%nuklear)
  (export '%nuklear::text-colored :%nuklear)
  (export '%nuklear::style-push-style-item :%nuklear)
  (export '%nuklear::hsv-iv :%nuklear)
  (export '%nuklear::ushort :%nuklear)
  (export '%nuklear::cx :%nuklear)
  (export '%nuklear::layout-ratio-from-pixel :%nuklear)
  (export '%nuklear::font-atlas-bake :%nuklear)
  (export '%nuklear::command-image :%nuklear)
  (export '%nuklear::color :%nuklear)
  (export '%nuklear::glyph-count :%nuklear)
  (export '%nuklear::text-width-f :%nuklear)
  (export '%nuklear::minimize-symbol :%nuklear)
  (export '%nuklear::scrolled :%nuklear)
  (export '%nuklear::contextual-border :%nuklear)
  (export '%nuklear::userdata :%nuklear)
  (export '%nuklear::input-has-mouse-click-down-in-rect :%nuklear)
  (export '%nuklear::font-atlas-clear :%nuklear)
  (export '%nuklear::input-is-mouse-down :%nuklear)
  (export '%nuklear::header :%nuklear)
  (export '%nuklear::marker :%nuklear)
  (export '%nuklear::image :%nuklear)
  (export '%nuklear::layout-space-push :%nuklear)
  (export '%nuklear::col :%nuklear)
  (export '%nuklear::delta :%nuklear)
  (export '%nuklear::shape-aa :%nuklear)
  (export '%nuklear::rgb :%nuklear)
  (export '%nuklear::v1 :%nuklear)
  (export '%nuklear::window-set-size :%nuklear)
  (export '%nuklear::buffer-init-fixed :%nuklear)
  (export '%nuklear::input-end :%nuklear)
  (export '%nuklear::menu-begin-symbol-label :%nuklear)
  (export '%nuklear::image-padding :%nuklear)
  (export '%nuklear::str-insert-text-runes :%nuklear)
  (export '%nuklear::content-padding :%nuklear)
  (export '%nuklear::color-hsv-f :%nuklear)
  (export '%nuklear::textedit-paste :%nuklear)
  (export '%nuklear::menubar-begin :%nuklear)
  (export '%nuklear::strlen :%nuklear)
  (export '%nuklear::selectable-image-text :%nuklear)
  (export '%nuklear::selected-text-normal :%nuklear)
  (export '%nuklear::+button-trigger-on-release+ :%nuklear)
  (export '%nuklear::draw-vertex-layout-format :%nuklear)
  (export '%nuklear::style-show-cursor :%nuklear)
  (export '%nuklear::+include-vertex-buffer-output+ :%nuklear)
  (export '%nuklear::str-at-char-const :%nuklear)
  (export '%nuklear::%draw-end :%nuklear)
  (export '%nuklear::scrollbar-size :%nuklear)
  (export '%nuklear::layout-row-static :%nuklear)
  (export '%nuklear::tree-element-pop :%nuklear)
  (export '%nuklear::str-get :%nuklear)
  (export '%nuklear::footer-height :%nuklear)
  (export '%nuklear::tooltip-border :%nuklear)
  (export '%nuklear::str-append-text-char :%nuklear)
  (export '%nuklear::con-old :%nuklear)
  (export '%nuklear::draw-list-setup :%nuklear)
  (export '%nuklear::progress :%nuklear)
  (export '%nuklear::draw-list-stroke :%nuklear)
  (export '%nuklear::fallback-glyph :%nuklear)
  (export '%nuklear::sel-end :%nuklear))

