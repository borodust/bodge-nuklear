[![Build Status](https://travis-ci.org/borodust/bodge-nuklear.svg)](https://travis-ci.org/borodust/bodge-nuklear) [![Build status](https://ci.appveyor.com/api/projects/status/di06oa6mp64el65a?svg=true)](https://ci.appveyor.com/project/borodust/bodge-nuklear)

# BODGE-NUKLEAR

Thin wrapper over [`Nuklear`](https://github.com/vurtun/nuklear) immediate mode
GUI library. For rich lispified system based on this wrapper have a look at
[`bodge-ui-window`](https://github.com/borodust/bodge-ui-window) and
[`bodge-ui`](https://github.com/borodust/bodge-ui).

# Requirements

* ASDF/Quicklisp
* x86_64/i686 GNU/Linux, macOS or Windows

# Loading
```lisp
(ql:quickload '(nuklear-blob bodge-nuklear))
```

# Usage

### Interface
All wrapped functions can be found in `%nk` package. On the other hand, `nk`
package contains minimally lispified wrappers and utility functions.

# Example
Example on how to use nuklear and a native renderer can be found in
[`example.lisp`](example.lisp). See `#'compose-nuklear` function.

To run it, evaluate in your REPL:
```lisp
(ql:quickload :bodge-nuklear/example)
(nuklear.example:run)
```
