[![Build Status](https://travis-ci.org/borodust/bodge-nuklear.svg)](https://travis-ci.org/borodust/bodge-nuklear) [![Build status](https://ci.appveyor.com/api/projects/status/di06oa6mp64el65a?svg=true)](https://ci.appveyor.com/project/borodust/bodge-nuklear)

# BODGE-NUKLEAR

Wrapper over [`Nuklear`](https://github.com/vurtun/nuklear) immediate mode GUI library.

# Requirements

* ASDF/Quicklisp
* x86_64/i686 GNU/Linux, macOS or Windows

# Loading
```lisp
(ql:quickload '(nuklear-blob bodge-nuklear))
```

# Usage

### Interface
All wrapped functions can be found in `%nk` package. On the other hand, `nk` package contains
minimally lispified wrappers and utility functions.

Native Nuklear OpenGL-based vertex buffer-backed renderer is included. See `#'make-renderer` and
`#'render-nuklear` functions.

To use the renderer you additionally need to load `bodge-glad` and `glad-blob` and invoke
`(glad:init)` in the thread with valid OpenGL 3+ context before any call to the renderer to
initialize required OpenGL entrypoints.

# Example
Example on how to use nuklear and included renderer can be found in
[`example.lisp`](example.lisp). See `#'compose-nuklear` function.

To run it, evaluate in your REPL:
```lisp
(ql:quickload :bodge-nuklear/example)
(nuklear.example:run)
```
