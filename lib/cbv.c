#include "bodge_nuklear.h"
#ifndef __CLAW_API
#  if defined(_WIN32)
#    define __CLAW_API __declspec(dllexport)
#  elif defined(__GNUC__)
#    define __CLAW_API __attribute__((visibility("default")))
#  else
#    define __CLAW_API
#  endif
#endif
#if defined(__cplusplus)
extern "C" {
#endif

__CLAW_API int __claw_nk_begin(struct nk_context* arg0, char* arg1, struct nk_rect* arg2, nk_flags arg3) {
  int result = nk_begin(arg0, arg1, (*arg2), arg3);
  return result;
}

__CLAW_API int __claw_nk_begin_titled(struct nk_context* arg0, char* arg1, char* arg2, struct nk_rect* arg3, nk_flags arg4) {
  int result = nk_begin_titled(arg0, arg1, arg2, (*arg3), arg4);
  return result;
}

__CLAW_API int __claw_nk_button_color(struct nk_context* arg0, struct nk_color* arg1) {
  int result = nk_button_color(arg0, (*arg1));
  return result;
}

__CLAW_API int __claw_nk_button_image(struct nk_context* arg0, struct nk_image* arg1) {
  int result = nk_button_image(arg0, (*arg1));
  return result;
}

__CLAW_API int __claw_nk_button_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3) {
  int result = nk_button_image_label(arg0, (*arg1), arg2, arg3);
  return result;
}

__CLAW_API int __claw_nk_button_image_label_styled(struct nk_context* arg0, struct nk_style_button* arg1, struct nk_image* arg2, char* arg3, nk_flags arg4) {
  int result = nk_button_image_label_styled(arg0, arg1, (*arg2), arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_button_image_styled(struct nk_context* arg0, struct nk_style_button* arg1, struct nk_image* arg2) {
  int result = nk_button_image_styled(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_button_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4) {
  int result = nk_button_image_text(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_button_image_text_styled(struct nk_context* arg0, struct nk_style_button* arg1, struct nk_image* arg2, char* arg3, int arg4, nk_flags arg5) {
  int result = nk_button_image_text_styled(arg0, arg1, (*arg2), arg3, arg4, arg5);
  return result;
}

__CLAW_API void __claw_nk_chart_add_slot_colored(struct nk_context* arg0, enum nk_chart_type arg1, struct nk_color* arg2, struct nk_color* arg3, int arg4, float arg5, float arg6) {
  nk_chart_add_slot_colored(arg0, arg1, (*arg2), (*arg3), arg4, arg5, arg6);
}

__CLAW_API int __claw_nk_chart_begin_colored(struct nk_context* arg0, enum nk_chart_type arg1, struct nk_color* arg2, struct nk_color* arg3, int arg4, float arg5, float arg6) {
  int result = nk_chart_begin_colored(arg0, arg1, (*arg2), (*arg3), arg4, arg5, arg6);
  return result;
}

__CLAW_API void __claw_nk_color_cf(struct nk_colorf* arg1, struct nk_color* arg0) {
  struct nk_colorf result = nk_color_cf((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_color_d(double* arg0, double* arg1, double* arg2, double* arg3, struct nk_color* arg4) {
  nk_color_d(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_color_dv(double* arg0, struct nk_color* arg1) {
  nk_color_dv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_f(float* arg0, float* arg1, float* arg2, float* arg3, struct nk_color* arg4) {
  nk_color_f(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_color_fv(float* arg0, struct nk_color* arg1) {
  nk_color_fv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hex_rgb(char* arg0, struct nk_color* arg1) {
  nk_color_hex_rgb(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hex_rgba(char* arg0, struct nk_color* arg1) {
  nk_color_hex_rgba(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsv_b(unsigned char* arg0, unsigned char* arg1, unsigned char* arg2, struct nk_color* arg3) {
  nk_color_hsv_b(arg0, arg1, arg2, (*arg3));
}

__CLAW_API void __claw_nk_color_hsv_bv(unsigned char* arg0, struct nk_color* arg1) {
  nk_color_hsv_bv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsv_f(float* arg0, float* arg1, float* arg2, struct nk_color* arg3) {
  nk_color_hsv_f(arg0, arg1, arg2, (*arg3));
}

__CLAW_API void __claw_nk_color_hsv_fv(float* arg0, struct nk_color* arg1) {
  nk_color_hsv_fv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsv_i(int* arg0, int* arg1, int* arg2, struct nk_color* arg3) {
  nk_color_hsv_i(arg0, arg1, arg2, (*arg3));
}

__CLAW_API void __claw_nk_color_hsv_iv(int* arg0, struct nk_color* arg1) {
  nk_color_hsv_iv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsva_b(unsigned char* arg0, unsigned char* arg1, unsigned char* arg2, unsigned char* arg3, struct nk_color* arg4) {
  nk_color_hsva_b(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_color_hsva_bv(unsigned char* arg0, struct nk_color* arg1) {
  nk_color_hsva_bv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsva_f(float* arg0, float* arg1, float* arg2, float* arg3, struct nk_color* arg4) {
  nk_color_hsva_f(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_color_hsva_fv(float* arg0, struct nk_color* arg1) {
  nk_color_hsva_fv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_hsva_i(int* arg0, int* arg1, int* arg2, int* arg3, struct nk_color* arg4) {
  nk_color_hsva_i(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_color_hsva_iv(int* arg0, struct nk_color* arg1) {
  nk_color_hsva_iv(arg0, (*arg1));
}

__CLAW_API void __claw_nk_color_picker(struct nk_colorf* arg3, struct nk_context* arg0, struct nk_colorf* arg1, enum nk_color_format arg2) {
  struct nk_colorf result = nk_color_picker(arg0, (*arg1), arg2);
  (*arg3) = result;
}

__CLAW_API nk_uint __claw_nk_color_u32(struct nk_color* arg0) {
  nk_uint result = nk_color_u32((*arg0));
  return result;
}

__CLAW_API void __claw_nk_colorf_hsva_f(float* arg0, float* arg1, float* arg2, float* arg3, struct nk_colorf* arg4) {
  nk_colorf_hsva_f(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_colorf_hsva_fv(float* arg0, struct nk_colorf* arg1) {
  nk_colorf_hsva_fv(arg0, (*arg1));
}

__CLAW_API int __claw_nk_combo(struct nk_context* arg0, char** arg1, int arg2, int arg3, int arg4, struct nk_vec2* arg5) {
  int result = nk_combo(arg0, arg1, arg2, arg3, arg4, (*arg5));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_color(struct nk_context* arg0, struct nk_color* arg1, struct nk_vec2* arg2) {
  int result = nk_combo_begin_color(arg0, (*arg1), (*arg2));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_image(struct nk_context* arg0, struct nk_image* arg1, struct nk_vec2* arg2) {
  int result = nk_combo_begin_image(arg0, (*arg1), (*arg2));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_image_label(struct nk_context* arg0, char* arg1, struct nk_image* arg2, struct nk_vec2* arg3) {
  int result = nk_combo_begin_image_label(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_image_text(struct nk_context* arg0, char* arg1, int arg2, struct nk_image* arg3, struct nk_vec2* arg4) {
  int result = nk_combo_begin_image_text(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_label(struct nk_context* arg0, char* arg1, struct nk_vec2* arg2) {
  int result = nk_combo_begin_label(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_symbol(struct nk_context* arg0, enum nk_symbol_type arg1, struct nk_vec2* arg2) {
  int result = nk_combo_begin_symbol(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_symbol_label(struct nk_context* arg0, char* arg1, enum nk_symbol_type arg2, struct nk_vec2* arg3) {
  int result = nk_combo_begin_symbol_label(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_symbol_text(struct nk_context* arg0, char* arg1, int arg2, enum nk_symbol_type arg3, struct nk_vec2* arg4) {
  int result = nk_combo_begin_symbol_text(arg0, arg1, arg2, arg3, (*arg4));
  return result;
}

__CLAW_API int __claw_nk_combo_begin_text(struct nk_context* arg0, char* arg1, int arg2, struct nk_vec2* arg3) {
  int result = nk_combo_begin_text(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API int __claw_nk_combo_callback(struct nk_context* arg0, void* arg1, void* arg2, int arg3, int arg4, int arg5, struct nk_vec2* arg6) {
  int result = nk_combo_callback(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
  return result;
}

__CLAW_API int __claw_nk_combo_item_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3) {
  int result = nk_combo_item_image_label(arg0, (*arg1), arg2, arg3);
  return result;
}

__CLAW_API int __claw_nk_combo_item_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4) {
  int result = nk_combo_item_image_text(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_combo_separator(struct nk_context* arg0, char* arg1, int arg2, int arg3, int arg4, int arg5, struct nk_vec2* arg6) {
  int result = nk_combo_separator(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
  return result;
}

__CLAW_API int __claw_nk_combo_string(struct nk_context* arg0, char* arg1, int arg2, int arg3, int arg4, struct nk_vec2* arg5) {
  int result = nk_combo_string(arg0, arg1, arg2, arg3, arg4, (*arg5));
  return result;
}

__CLAW_API void __claw_nk_combobox(struct nk_context* arg0, char** arg1, int arg2, int* arg3, int arg4, struct nk_vec2* arg5) {
  nk_combobox(arg0, arg1, arg2, arg3, arg4, (*arg5));
}

__CLAW_API void __claw_nk_combobox_callback(struct nk_context* arg0, void* arg1, void* arg2, int* arg3, int arg4, int arg5, struct nk_vec2* arg6) {
  nk_combobox_callback(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
}

__CLAW_API void __claw_nk_combobox_separator(struct nk_context* arg0, char* arg1, int arg2, int* arg3, int arg4, int arg5, struct nk_vec2* arg6) {
  nk_combobox_separator(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
}

__CLAW_API void __claw_nk_combobox_string(struct nk_context* arg0, char* arg1, int* arg2, int arg3, int arg4, struct nk_vec2* arg5) {
  nk_combobox_string(arg0, arg1, arg2, arg3, arg4, (*arg5));
}

__CLAW_API int __claw_nk_contextual_begin(struct nk_context* arg0, nk_flags arg1, struct nk_vec2* arg2, struct nk_rect* arg3) {
  int result = nk_contextual_begin(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API int __claw_nk_contextual_item_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3) {
  int result = nk_contextual_item_image_label(arg0, (*arg1), arg2, arg3);
  return result;
}

__CLAW_API int __claw_nk_contextual_item_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4) {
  int result = nk_contextual_item_image_text(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API void __claw_nk_draw_image(struct nk_command_buffer* arg0, struct nk_rect* arg1, struct nk_image* arg2, struct nk_color* arg3) {
  nk_draw_image(arg0, (*arg1), arg2, (*arg3));
}

__CLAW_API void __claw_nk_draw_list_add_image(struct nk_draw_list* arg0, struct nk_image* arg1, struct nk_rect* arg2, struct nk_color* arg3) {
  nk_draw_list_add_image(arg0, (*arg1), (*arg2), (*arg3));
}

__CLAW_API void __claw_nk_draw_list_add_text(struct nk_draw_list* arg0, struct nk_user_font* arg1, struct nk_rect* arg2, char* arg3, int arg4, float arg5, struct nk_color* arg6) {
  nk_draw_list_add_text(arg0, arg1, (*arg2), arg3, arg4, arg5, (*arg6));
}

__CLAW_API void __claw_nk_draw_list_fill_circle(struct nk_draw_list* arg0, struct nk_vec2* arg1, float arg2, struct nk_color* arg3, unsigned int arg4) {
  nk_draw_list_fill_circle(arg0, (*arg1), arg2, (*arg3), arg4);
}

__CLAW_API void __claw_nk_draw_list_fill_poly_convex(struct nk_draw_list* arg0, struct nk_vec2* arg1, unsigned int arg2, struct nk_color* arg3, enum nk_anti_aliasing arg4) {
  nk_draw_list_fill_poly_convex(arg0, arg1, arg2, (*arg3), arg4);
}

__CLAW_API void __claw_nk_draw_list_fill_rect(struct nk_draw_list* arg0, struct nk_rect* arg1, struct nk_color* arg2, float arg3) {
  nk_draw_list_fill_rect(arg0, (*arg1), (*arg2), arg3);
}

__CLAW_API void __claw_nk_draw_list_fill_rect_multi_color(struct nk_draw_list* arg0, struct nk_rect* arg1, struct nk_color* arg2, struct nk_color* arg3, struct nk_color* arg4, struct nk_color* arg5) {
  nk_draw_list_fill_rect_multi_color(arg0, (*arg1), (*arg2), (*arg3), (*arg4), (*arg5));
}

__CLAW_API void __claw_nk_draw_list_fill_triangle(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, struct nk_vec2* arg3, struct nk_color* arg4) {
  nk_draw_list_fill_triangle(arg0, (*arg1), (*arg2), (*arg3), (*arg4));
}

__CLAW_API void __claw_nk_draw_list_path_arc_to(struct nk_draw_list* arg0, struct nk_vec2* arg1, float arg2, float arg3, float arg4, unsigned int arg5) {
  nk_draw_list_path_arc_to(arg0, (*arg1), arg2, arg3, arg4, arg5);
}

__CLAW_API void __claw_nk_draw_list_path_arc_to_fast(struct nk_draw_list* arg0, struct nk_vec2* arg1, float arg2, int arg3, int arg4) {
  nk_draw_list_path_arc_to_fast(arg0, (*arg1), arg2, arg3, arg4);
}

__CLAW_API void __claw_nk_draw_list_path_curve_to(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, struct nk_vec2* arg3, unsigned int arg4) {
  nk_draw_list_path_curve_to(arg0, (*arg1), (*arg2), (*arg3), arg4);
}

__CLAW_API void __claw_nk_draw_list_path_fill(struct nk_draw_list* arg0, struct nk_color* arg1) {
  nk_draw_list_path_fill(arg0, (*arg1));
}

__CLAW_API void __claw_nk_draw_list_path_line_to(struct nk_draw_list* arg0, struct nk_vec2* arg1) {
  nk_draw_list_path_line_to(arg0, (*arg1));
}

__CLAW_API void __claw_nk_draw_list_path_rect_to(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, float arg3) {
  nk_draw_list_path_rect_to(arg0, (*arg1), (*arg2), arg3);
}

__CLAW_API void __claw_nk_draw_list_path_stroke(struct nk_draw_list* arg0, struct nk_color* arg1, enum nk_draw_list_stroke arg2, float arg3) {
  nk_draw_list_path_stroke(arg0, (*arg1), arg2, arg3);
}

__CLAW_API void __claw_nk_draw_list_stroke_circle(struct nk_draw_list* arg0, struct nk_vec2* arg1, float arg2, struct nk_color* arg3, unsigned int arg4, float arg5) {
  nk_draw_list_stroke_circle(arg0, (*arg1), arg2, (*arg3), arg4, arg5);
}

__CLAW_API void __claw_nk_draw_list_stroke_curve(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, struct nk_vec2* arg3, struct nk_vec2* arg4, struct nk_color* arg5, unsigned int arg6, float arg7) {
  nk_draw_list_stroke_curve(arg0, (*arg1), (*arg2), (*arg3), (*arg4), (*arg5), arg6, arg7);
}

__CLAW_API void __claw_nk_draw_list_stroke_line(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, struct nk_color* arg3, float arg4) {
  nk_draw_list_stroke_line(arg0, (*arg1), (*arg2), (*arg3), arg4);
}

__CLAW_API void __claw_nk_draw_list_stroke_poly_line(struct nk_draw_list* arg0, struct nk_vec2* arg1, unsigned int arg2, struct nk_color* arg3, enum nk_draw_list_stroke arg4, float arg5, enum nk_anti_aliasing arg6) {
  nk_draw_list_stroke_poly_line(arg0, arg1, arg2, (*arg3), arg4, arg5, arg6);
}

__CLAW_API void __claw_nk_draw_list_stroke_rect(struct nk_draw_list* arg0, struct nk_rect* arg1, struct nk_color* arg2, float arg3, float arg4) {
  nk_draw_list_stroke_rect(arg0, (*arg1), (*arg2), arg3, arg4);
}

__CLAW_API void __claw_nk_draw_list_stroke_triangle(struct nk_draw_list* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2, struct nk_vec2* arg3, struct nk_color* arg4, float arg5) {
  nk_draw_list_stroke_triangle(arg0, (*arg1), (*arg2), (*arg3), (*arg4), arg5);
}

__CLAW_API void __claw_nk_draw_text(struct nk_command_buffer* arg0, struct nk_rect* arg1, char* arg2, int arg3, struct nk_user_font* arg4, struct nk_color* arg5, struct nk_color* arg6) {
  nk_draw_text(arg0, (*arg1), arg2, arg3, arg4, (*arg5), (*arg6));
}

__CLAW_API void __claw_nk_fill_arc(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, struct nk_color* arg6) {
  nk_fill_arc(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
}

__CLAW_API void __claw_nk_fill_circle(struct nk_command_buffer* arg0, struct nk_rect* arg1, struct nk_color* arg2) {
  nk_fill_circle(arg0, (*arg1), (*arg2));
}

__CLAW_API void __claw_nk_fill_polygon(struct nk_command_buffer* arg0, float* arg1, int arg2, struct nk_color* arg3) {
  nk_fill_polygon(arg0, arg1, arg2, (*arg3));
}

__CLAW_API void __claw_nk_fill_rect(struct nk_command_buffer* arg0, struct nk_rect* arg1, float arg2, struct nk_color* arg3) {
  nk_fill_rect(arg0, (*arg1), arg2, (*arg3));
}

__CLAW_API void __claw_nk_fill_rect_multi_color(struct nk_command_buffer* arg0, struct nk_rect* arg1, struct nk_color* arg2, struct nk_color* arg3, struct nk_color* arg4, struct nk_color* arg5) {
  nk_fill_rect_multi_color(arg0, (*arg1), (*arg2), (*arg3), (*arg4), (*arg5));
}

__CLAW_API void __claw_nk_fill_triangle(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, struct nk_color* arg7) {
  nk_fill_triangle(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (*arg7));
}

__CLAW_API void __claw_nk_get_null_rect(struct nk_rect* arg0) {
  struct nk_rect result = nk_get_null_rect();
  (*arg0) = result;
}

__CLAW_API void __claw_nk_hsv(struct nk_color* arg3, int arg0, int arg1, int arg2) {
  struct nk_color result = nk_hsv(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nk_hsv_bv(struct nk_color* arg1, unsigned char* arg0) {
  struct nk_color result = nk_hsv_bv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsv_f(struct nk_color* arg3, float arg0, float arg1, float arg2) {
  struct nk_color result = nk_hsv_f(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nk_hsv_fv(struct nk_color* arg1, float* arg0) {
  struct nk_color result = nk_hsv_fv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsv_iv(struct nk_color* arg1, int* arg0) {
  struct nk_color result = nk_hsv_iv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsva(struct nk_color* arg4, int arg0, int arg1, int arg2, int arg3) {
  struct nk_color result = nk_hsva(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_hsva_bv(struct nk_color* arg1, unsigned char* arg0) {
  struct nk_color result = nk_hsva_bv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsva_colorf(struct nk_colorf* arg4, float arg0, float arg1, float arg2, float arg3) {
  struct nk_colorf result = nk_hsva_colorf(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_hsva_colorfv(struct nk_colorf* arg1, float* arg0) {
  struct nk_colorf result = nk_hsva_colorfv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsva_f(struct nk_color* arg4, float arg0, float arg1, float arg2, float arg3) {
  struct nk_color result = nk_hsva_f(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_hsva_fv(struct nk_color* arg1, float* arg0) {
  struct nk_color result = nk_hsva_fv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_hsva_iv(struct nk_color* arg1, int* arg0) {
  struct nk_color result = nk_hsva_iv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_image(struct nk_context* arg0, struct nk_image* arg1) {
  nk_image(arg0, (*arg1));
}

__CLAW_API void __claw_nk_image_handle(struct nk_image* arg1, nk_handle arg0) {
  struct nk_image result = nk_image_handle(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_image_id(struct nk_image* arg1, int arg0) {
  struct nk_image result = nk_image_id(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_image_ptr(struct nk_image* arg1, void* arg0) {
  struct nk_image result = nk_image_ptr(arg0);
  (*arg1) = result;
}

__CLAW_API int __claw_nk_input_any_mouse_click_in_rect(struct nk_input* arg0, struct nk_rect* arg1) {
  int result = nk_input_any_mouse_click_in_rect(arg0, (*arg1));
  return result;
}

__CLAW_API int __claw_nk_input_has_mouse_click_down_in_rect(struct nk_input* arg0, enum nk_buttons arg1, struct nk_rect* arg2, int arg3) {
  int result = nk_input_has_mouse_click_down_in_rect(arg0, arg1, (*arg2), arg3);
  return result;
}

__CLAW_API int __claw_nk_input_has_mouse_click_in_rect(struct nk_input* arg0, enum nk_buttons arg1, struct nk_rect* arg2) {
  int result = nk_input_has_mouse_click_in_rect(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_input_is_mouse_click_down_in_rect(struct nk_input* arg0, enum nk_buttons arg1, struct nk_rect* arg2, int arg3) {
  int result = nk_input_is_mouse_click_down_in_rect(arg0, arg1, (*arg2), arg3);
  return result;
}

__CLAW_API int __claw_nk_input_is_mouse_click_in_rect(struct nk_input* arg0, enum nk_buttons arg1, struct nk_rect* arg2) {
  int result = nk_input_is_mouse_click_in_rect(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_input_is_mouse_hovering_rect(struct nk_input* arg0, struct nk_rect* arg1) {
  int result = nk_input_is_mouse_hovering_rect(arg0, (*arg1));
  return result;
}

__CLAW_API int __claw_nk_input_is_mouse_prev_hovering_rect(struct nk_input* arg0, struct nk_rect* arg1) {
  int result = nk_input_is_mouse_prev_hovering_rect(arg0, (*arg1));
  return result;
}

__CLAW_API int __claw_nk_input_mouse_clicked(struct nk_input* arg0, enum nk_buttons arg1, struct nk_rect* arg2) {
  int result = nk_input_mouse_clicked(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API void __claw_nk_input_scroll(struct nk_context* arg0, struct nk_vec2* arg1) {
  nk_input_scroll(arg0, (*arg1));
}

__CLAW_API void __claw_nk_label_colored(struct nk_context* arg0, char* arg1, nk_flags arg2, struct nk_color* arg3) {
  nk_label_colored(arg0, arg1, arg2, (*arg3));
}

__CLAW_API void __claw_nk_label_colored_wrap(struct nk_context* arg0, char* arg1, struct nk_color* arg2) {
  nk_label_colored_wrap(arg0, arg1, (*arg2));
}

__CLAW_API void __claw_nk_layout_space_bounds(struct nk_rect* arg1, struct nk_context* arg0) {
  struct nk_rect result = nk_layout_space_bounds(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_layout_space_push(struct nk_context* arg0, struct nk_rect* arg1) {
  nk_layout_space_push(arg0, (*arg1));
}

__CLAW_API void __claw_nk_layout_space_rect_to_local(struct nk_rect* arg2, struct nk_context* arg0, struct nk_rect* arg1) {
  struct nk_rect result = nk_layout_space_rect_to_local(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_nk_layout_space_rect_to_screen(struct nk_rect* arg2, struct nk_context* arg0, struct nk_rect* arg1) {
  struct nk_rect result = nk_layout_space_rect_to_screen(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_nk_layout_space_to_local(struct nk_vec2* arg2, struct nk_context* arg0, struct nk_vec2* arg1) {
  struct nk_vec2 result = nk_layout_space_to_local(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_nk_layout_space_to_screen(struct nk_vec2* arg2, struct nk_context* arg0, struct nk_vec2* arg1) {
  struct nk_vec2 result = nk_layout_space_to_screen(arg0, (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_nk_layout_widget_bounds(struct nk_rect* arg1, struct nk_context* arg0) {
  struct nk_rect result = nk_layout_widget_bounds(arg0);
  (*arg1) = result;
}

__CLAW_API int __claw_nk_menu_begin_image(struct nk_context* arg0, char* arg1, struct nk_image* arg2, struct nk_vec2* arg3) {
  int result = nk_menu_begin_image(arg0, arg1, (*arg2), (*arg3));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_image_label(struct nk_context* arg0, char* arg1, nk_flags arg2, struct nk_image* arg3, struct nk_vec2* arg4) {
  int result = nk_menu_begin_image_label(arg0, arg1, arg2, (*arg3), (*arg4));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_image_text(struct nk_context* arg0, char* arg1, int arg2, nk_flags arg3, struct nk_image* arg4, struct nk_vec2* arg5) {
  int result = nk_menu_begin_image_text(arg0, arg1, arg2, arg3, (*arg4), (*arg5));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_label(struct nk_context* arg0, char* arg1, nk_flags arg2, struct nk_vec2* arg3) {
  int result = nk_menu_begin_label(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_symbol(struct nk_context* arg0, char* arg1, enum nk_symbol_type arg2, struct nk_vec2* arg3) {
  int result = nk_menu_begin_symbol(arg0, arg1, arg2, (*arg3));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_symbol_label(struct nk_context* arg0, char* arg1, nk_flags arg2, enum nk_symbol_type arg3, struct nk_vec2* arg4) {
  int result = nk_menu_begin_symbol_label(arg0, arg1, arg2, arg3, (*arg4));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_symbol_text(struct nk_context* arg0, char* arg1, int arg2, nk_flags arg3, enum nk_symbol_type arg4, struct nk_vec2* arg5) {
  int result = nk_menu_begin_symbol_text(arg0, arg1, arg2, arg3, arg4, (*arg5));
  return result;
}

__CLAW_API int __claw_nk_menu_begin_text(struct nk_context* arg0, char* arg1, int arg2, nk_flags arg3, struct nk_vec2* arg4) {
  int result = nk_menu_begin_text(arg0, arg1, arg2, arg3, (*arg4));
  return result;
}

__CLAW_API int __claw_nk_menu_item_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3) {
  int result = nk_menu_item_image_label(arg0, (*arg1), arg2, arg3);
  return result;
}

__CLAW_API int __claw_nk_menu_item_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4) {
  int result = nk_menu_item_image_text(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_popup_begin(struct nk_context* arg0, enum nk_popup_type arg1, char* arg2, nk_flags arg3, struct nk_rect* arg4) {
  int result = nk_popup_begin(arg0, arg1, arg2, arg3, (*arg4));
  return result;
}

__CLAW_API void __claw_nk_push_custom(struct nk_command_buffer* arg0, struct nk_rect* arg1, nk_command_custom_callback arg2, nk_handle arg3) {
  nk_push_custom(arg0, (*arg1), arg2, arg3);
}

__CLAW_API void __claw_nk_push_scissor(struct nk_command_buffer* arg0, struct nk_rect* arg1) {
  nk_push_scissor(arg0, (*arg1));
}

__CLAW_API void __claw_nk_rect(struct nk_rect* arg4, float arg0, float arg1, float arg2, float arg3) {
  struct nk_rect result = nk_rect(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_rect_pos(struct nk_vec2* arg1, struct nk_rect* arg0) {
  struct nk_vec2 result = nk_rect_pos((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rect_size(struct nk_vec2* arg1, struct nk_rect* arg0) {
  struct nk_vec2 result = nk_rect_size((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_recta(struct nk_rect* arg2, struct nk_vec2* arg0, struct nk_vec2* arg1) {
  struct nk_rect result = nk_recta((*arg0), (*arg1));
  (*arg2) = result;
}

__CLAW_API void __claw_nk_recti(struct nk_rect* arg4, int arg0, int arg1, int arg2, int arg3) {
  struct nk_rect result = nk_recti(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_rectiv(struct nk_rect* arg1, int* arg0) {
  struct nk_rect result = nk_rectiv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rectv(struct nk_rect* arg1, float* arg0) {
  struct nk_rect result = nk_rectv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgb(struct nk_color* arg3, int arg0, int arg1, int arg2) {
  struct nk_color result = nk_rgb(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nk_rgb_bv(struct nk_color* arg1, unsigned char* arg0) {
  struct nk_color result = nk_rgb_bv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgb_cf(struct nk_color* arg1, struct nk_colorf* arg0) {
  struct nk_color result = nk_rgb_cf((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgb_f(struct nk_color* arg3, float arg0, float arg1, float arg2) {
  struct nk_color result = nk_rgb_f(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nk_rgb_fv(struct nk_color* arg1, float* arg0) {
  struct nk_color result = nk_rgb_fv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgb_hex(struct nk_color* arg1, char* arg0) {
  struct nk_color result = nk_rgb_hex(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgb_iv(struct nk_color* arg1, int* arg0) {
  struct nk_color result = nk_rgb_iv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba(struct nk_color* arg4, int arg0, int arg1, int arg2, int arg3) {
  struct nk_color result = nk_rgba(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_rgba_bv(struct nk_color* arg1, unsigned char* arg0) {
  struct nk_color result = nk_rgba_bv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba_cf(struct nk_color* arg1, struct nk_colorf* arg0) {
  struct nk_color result = nk_rgba_cf((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba_f(struct nk_color* arg4, float arg0, float arg1, float arg2, float arg3) {
  struct nk_color result = nk_rgba_f(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nk_rgba_fv(struct nk_color* arg1, float* arg0) {
  struct nk_color result = nk_rgba_fv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba_hex(struct nk_color* arg1, char* arg0) {
  struct nk_color result = nk_rgba_hex(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba_iv(struct nk_color* arg1, int* arg0) {
  struct nk_color result = nk_rgba_iv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_rgba_u32(struct nk_color* arg1, nk_uint arg0) {
  struct nk_color result = nk_rgba_u32(arg0);
  (*arg1) = result;
}

__CLAW_API int __claw_nk_select_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3, int arg4) {
  int result = nk_select_image_label(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_select_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4, int arg5) {
  int result = nk_select_image_text(arg0, (*arg1), arg2, arg3, arg4, arg5);
  return result;
}

__CLAW_API int __claw_nk_selectable_image_label(struct nk_context* arg0, struct nk_image* arg1, char* arg2, nk_flags arg3, int* arg4) {
  int result = nk_selectable_image_label(arg0, (*arg1), arg2, arg3, arg4);
  return result;
}

__CLAW_API int __claw_nk_selectable_image_text(struct nk_context* arg0, struct nk_image* arg1, char* arg2, int arg3, nk_flags arg4, int* arg5) {
  int result = nk_selectable_image_text(arg0, (*arg1), arg2, arg3, arg4, arg5);
  return result;
}

__CLAW_API void __claw_nk_stroke_arc(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, struct nk_color* arg7) {
  nk_stroke_arc(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (*arg7));
}

__CLAW_API void __claw_nk_stroke_circle(struct nk_command_buffer* arg0, struct nk_rect* arg1, float arg2, struct nk_color* arg3) {
  nk_stroke_circle(arg0, (*arg1), arg2, (*arg3));
}

__CLAW_API void __claw_nk_stroke_curve(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, float arg7, float arg8, float arg9, struct nk_color* arg10) {
  nk_stroke_curve(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, (*arg10));
}

__CLAW_API void __claw_nk_stroke_line(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, struct nk_color* arg6) {
  nk_stroke_line(arg0, arg1, arg2, arg3, arg4, arg5, (*arg6));
}

__CLAW_API void __claw_nk_stroke_polygon(struct nk_command_buffer* arg0, float* arg1, int arg2, float arg3, struct nk_color* arg4) {
  nk_stroke_polygon(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_stroke_polyline(struct nk_command_buffer* arg0, float* arg1, int arg2, float arg3, struct nk_color* arg4) {
  nk_stroke_polyline(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_stroke_rect(struct nk_command_buffer* arg0, struct nk_rect* arg1, float arg2, float arg3, struct nk_color* arg4) {
  nk_stroke_rect(arg0, (*arg1), arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_stroke_triangle(struct nk_command_buffer* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, float arg7, struct nk_color* arg8) {
  nk_stroke_triangle(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (*arg8));
}

__CLAW_API void __claw_nk_style_item_color(struct nk_style_item* arg1, struct nk_color* arg0) {
  struct nk_style_item result = nk_style_item_color((*arg0));
  (*arg1) = result;
}

__CLAW_API void __claw_nk_style_item_hide(struct nk_style_item* arg0) {
  struct nk_style_item result = nk_style_item_hide();
  (*arg0) = result;
}

__CLAW_API void __claw_nk_style_item_image(struct nk_style_item* arg1, struct nk_image* arg0) {
  struct nk_style_item result = nk_style_item_image((*arg0));
  (*arg1) = result;
}

__CLAW_API int __claw_nk_style_push_color(struct nk_context* arg0, struct nk_color* arg1, struct nk_color* arg2) {
  int result = nk_style_push_color(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_style_push_style_item(struct nk_context* arg0, struct nk_style_item* arg1, struct nk_style_item* arg2) {
  int result = nk_style_push_style_item(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API int __claw_nk_style_push_vec2(struct nk_context* arg0, struct nk_vec2* arg1, struct nk_vec2* arg2) {
  int result = nk_style_push_vec2(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API void __claw_nk_subimage_handle(struct nk_image* arg4, nk_handle arg0, unsigned short arg1, unsigned short arg2, struct nk_rect* arg3) {
  struct nk_image result = nk_subimage_handle(arg0, arg1, arg2, (*arg3));
  (*arg4) = result;
}

__CLAW_API void __claw_nk_subimage_id(struct nk_image* arg4, int arg0, unsigned short arg1, unsigned short arg2, struct nk_rect* arg3) {
  struct nk_image result = nk_subimage_id(arg0, arg1, arg2, (*arg3));
  (*arg4) = result;
}

__CLAW_API void __claw_nk_subimage_ptr(struct nk_image* arg4, void* arg0, unsigned short arg1, unsigned short arg2, struct nk_rect* arg3) {
  struct nk_image result = nk_subimage_ptr(arg0, arg1, arg2, (*arg3));
  (*arg4) = result;
}

__CLAW_API void __claw_nk_text_colored(struct nk_context* arg0, char* arg1, int arg2, nk_flags arg3, struct nk_color* arg4) {
  nk_text_colored(arg0, arg1, arg2, arg3, (*arg4));
}

__CLAW_API void __claw_nk_text_wrap_colored(struct nk_context* arg0, char* arg1, int arg2, struct nk_color* arg3) {
  nk_text_wrap_colored(arg0, arg1, arg2, (*arg3));
}

__CLAW_API int __claw_nk_tree_image_push_hashed(struct nk_context* arg0, enum nk_tree_type arg1, struct nk_image* arg2, char* arg3, enum nk_collapse_states arg4, char* arg5, int arg6, int arg7) {
  int result = nk_tree_image_push_hashed(arg0, arg1, (*arg2), arg3, arg4, arg5, arg6, arg7);
  return result;
}

__CLAW_API int __claw_nk_tree_state_image_push(struct nk_context* arg0, enum nk_tree_type arg1, struct nk_image* arg2, char* arg3, enum nk_collapse_states* arg4) {
  int result = nk_tree_state_image_push(arg0, arg1, (*arg2), arg3, arg4);
  return result;
}

__CLAW_API void __claw_nk_triangle_from_direction(struct nk_vec2* arg0, struct nk_rect* arg1, float arg2, float arg3, enum nk_heading arg4) {
  nk_triangle_from_direction(arg0, (*arg1), arg2, arg3, arg4);
}

__CLAW_API void __claw_nk_vec2(struct nk_vec2* arg2, float arg0, float arg1) {
  struct nk_vec2 result = nk_vec2(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_nk_vec2i(struct nk_vec2* arg2, int arg0, int arg1) {
  struct nk_vec2 result = nk_vec2i(arg0, arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_nk_vec2iv(struct nk_vec2* arg1, int* arg0) {
  struct nk_vec2 result = nk_vec2iv(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_vec2v(struct nk_vec2* arg1, float* arg0) {
  struct nk_vec2 result = nk_vec2v(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_widget_bounds(struct nk_rect* arg1, struct nk_context* arg0) {
  struct nk_rect result = nk_widget_bounds(arg0);
  (*arg1) = result;
}

__CLAW_API enum nk_widget_layout_states __claw_nk_widget_fitting(struct nk_rect* arg0, struct nk_context* arg1, struct nk_vec2* arg2) {
  enum nk_widget_layout_states result = nk_widget_fitting(arg0, arg1, (*arg2));
  return result;
}

__CLAW_API void __claw_nk_widget_position(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_widget_position(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_widget_size(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_widget_size(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_bounds(struct nk_rect* arg1, struct nk_context* arg0) {
  struct nk_rect result = nk_window_get_bounds(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_content_region(struct nk_rect* arg1, struct nk_context* arg0) {
  struct nk_rect result = nk_window_get_content_region(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_content_region_max(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_window_get_content_region_max(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_content_region_min(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_window_get_content_region_min(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_content_region_size(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_window_get_content_region_size(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_position(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_window_get_position(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_get_size(struct nk_vec2* arg1, struct nk_context* arg0) {
  struct nk_vec2 result = nk_window_get_size(arg0);
  (*arg1) = result;
}

__CLAW_API void __claw_nk_window_set_bounds(struct nk_context* arg0, char* arg1, struct nk_rect* arg2) {
  nk_window_set_bounds(arg0, arg1, (*arg2));
}

__CLAW_API void __claw_nk_window_set_position(struct nk_context* arg0, char* arg1, struct nk_vec2* arg2) {
  nk_window_set_position(arg0, arg1, (*arg2));
}

__CLAW_API void __claw_nk_window_set_size(struct nk_context* arg0, char* arg1, struct nk_vec2* arg2) {
  nk_window_set_size(arg0, arg1, (*arg2));
}
#if defined(__cplusplus)
}
#endif
