#ifndef _BODGE_NUKLEAR_H
#define _BODGE_NUKLEAR_H

#define NK_INCLUDE_STANDARD_IO
#define NK_INCLUDE_DEFAULT_ALLOCATOR
#define NK_INCLUDE_FIXED_TYPES
#define NK_BUTTON_TRIGGER_ON_RELEASE
#define NK_INCLUDE_VERTEX_BUFFER_OUTPUT
#define NK_INCLUDE_FONT_BAKING
#define NK_INCLUDE_DEFAULT_FONT

#ifndef NK_API
#  if defined(_WIN32)
#    define NK_API __declspec(dllexport)
#  elif defined(__GNUC__)
#    define NK_API __attribute__((visibility("default")))
#  else
#    define NK_API extern
#  endif
#endif

#include "nuklear.h"

#endif
