#ifndef _BODGE_NUKLEAR_H
#define _BODGE_NUKLEAR_H

#define NK_INCLUDE_DEFAULT_ALLOCATOR
#define NK_INCLUDE_FIXED_TYPES
#include "nuklear.h"


#ifdef _WIN32
#define BGE_API extern
#else
#define BGE_API
#endif


BGE_API void bge_init_color_style_item(struct nk_style_item* item,
                                       float r, float g, float b, float a);


BGE_API int bge_begin_titled(struct nk_context* context, const char* id, const char* title,
                             float x, float y, float width, float height,
                             nk_flags flags);


BGE_API void bge_style_push_vec2(struct nk_context* context,
                                 struct nk_vec2* vec, float x, float y);


BGE_API void bge_style_push_style_item(struct nk_context* context,
                                       struct nk_style_item* destination,
                                       struct nk_style_item* source);
#endif // _BODGE_NUKLEAR_H
