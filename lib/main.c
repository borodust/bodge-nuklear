#define NK_IMPLEMENTATION
#include "../bodge_nuklear.h"


void bge_init_color_style_item(struct nk_style_item* item, float r, float g, float b, float a) {
  (*item) = nk_style_item_color(nk_rgba_f(r, g, b, a));
}

int bge_begin_titled(struct nk_context* context, const char* id, const char* title,
                     float x, float y, float width, float height,
                     nk_flags flags) {
  struct nk_rect bounds;
  bounds.x = x;
  bounds.y = y;
  bounds.w = width;
  bounds.h = height;
  return nk_begin_titled(context, id, title, bounds, flags);
}

void bge_style_push_vec2(struct nk_context* context,
                         struct nk_vec2* vec, float x, float y) {
  struct nk_vec2 src;
  src.x = x;
  src.y = y;
  nk_style_push_vec2(context, vec, src);
}


void bge_style_push_style_item(struct nk_context* context,
                               struct nk_style_item* destination,
                               struct nk_style_item* source) {
  nk_style_push_style_item(context, destination, (*source));
}
