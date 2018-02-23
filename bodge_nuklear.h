#ifndef _BODGE_NUKLEAR_H
#define _BODGE_NUKLEAR_H

#define NK_INCLUDE_STANDARD_IO
#define NK_INCLUDE_DEFAULT_ALLOCATOR
#define NK_INCLUDE_FIXED_TYPES
#define NK_BUTTON_TRIGGER_ON_RELEASE
#define NK_INCLUDE_VERTEX_BUFFER_OUTPUT
#define NK_INCLUDE_FONT_BAKING
#define NK_INCLUDE_DEFAULT_FONT

#include "nuklear.h"

struct nk_bodge_renderer;

NK_API struct nk_bodge_renderer*
nk_bodge_renderer_create(int max_vertex_buffer, int max_element_buffer);

NK_API void
nk_bodge_render(struct nk_context* ctx, struct nk_bodge_renderer *renderer, int width, int height, float pixel_ratio);

NK_API struct nk_font*
nk_bodge_renderer_font(struct nk_bodge_renderer *renderer);

NK_API void
nk_bodge_renderer_destroy(struct nk_bodge_renderer *renderer);

#endif
