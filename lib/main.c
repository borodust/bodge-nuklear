#define NK_IMPLEMENTATION
#include "bodge_nuklear.h"
#include "glad/glad.h"

/* adpated from https://github.com/vurtun/nuklear/blob/2891c6afbc5781b700cbad6f6d771f1f214f6b56/demo/glfw_opengl3/nuklear_glfw_gl3.h */

struct nk_bodge_vertex {
    float position[2];
    float uv[2];
    nk_byte col[4];
};

struct nk_bodge_renderer {
  struct nk_buffer cmds;
  struct nk_draw_null_texture null;
  struct nk_font_atlas atlas;
  GLuint vbo, vao, ebo;
  GLuint prog;
  GLuint vert_shdr;
  GLuint frag_shdr;
  GLint attrib_pos;
  GLint attrib_uv;
  GLint attrib_col;
  GLint uniform_tex;
  GLint uniform_proj;
  GLuint font_tex;
  int max_vertex_buffer;
  int max_element_buffer;
};

#ifdef __APPLE__
  #define NK_SHADER_VERSION "#version 150\n"
#else
  #define NK_SHADER_VERSION "#version 300 es\n"
#endif

void
nk_bodge_renderer_upload_atlas(struct nk_bodge_renderer *dev, const void *image, int width, int height)
{
  glGenTextures(1, &dev->font_tex);
  glBindTexture(GL_TEXTURE_2D, dev->font_tex);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, (GLsizei)width, (GLsizei)height, 0,
               GL_RGBA, GL_UNSIGNED_BYTE, image);
}

void
nk_bodge_font_stash_begin(struct nk_bodge_renderer *renderer)
{
  nk_font_atlas_init_default(&renderer->atlas);
  nk_font_atlas_begin(&renderer->atlas);
}

void
nk_bodge_font_stash_end(struct nk_bodge_renderer *renderer)
{
  const void *image; int w, h;
  image = nk_font_atlas_bake(&renderer->atlas, &w, &h, NK_FONT_ATLAS_RGBA32);
  nk_bodge_renderer_upload_atlas(renderer, image, w, h);
  nk_font_atlas_end(&renderer->atlas, nk_handle_id((int)renderer->font_tex), &renderer->null);
}

struct nk_bodge_renderer*
nk_bodge_renderer_create(int max_vertex_buffer, int max_element_buffer)
{
  GLint status;
  static const GLchar *vertex_shader =
    NK_SHADER_VERSION
    "uniform mat4 ProjMtx;\n"
    "in vec2 Position;\n"
    "in vec2 TexCoord;\n"
    "in vec4 Color;\n"
    "out vec2 Frag_UV;\n"
    "out vec4 Frag_Color;\n"
    "void main() {\n"
    "   Frag_UV = TexCoord;\n"
    "   Frag_Color = Color;\n"
    "   gl_Position = ProjMtx * vec4(Position.xy, 0, 1);\n"
    "}\n";
  static const GLchar *fragment_shader =
    NK_SHADER_VERSION
    "precision mediump float;\n"
    "uniform sampler2D Texture;\n"
    "in vec2 Frag_UV;\n"
    "in vec4 Frag_Color;\n"
    "out vec4 Out_Color;\n"
    "void main(){\n"
    "   Out_Color = Frag_Color * texture(Texture, Frag_UV.st);\n"
    "}\n";

  struct nk_bodge_renderer *dev = calloc(1, sizeof(struct nk_bodge_renderer));
  dev->max_vertex_buffer = max_vertex_buffer;
  dev->max_element_buffer = max_element_buffer;
  nk_buffer_init_default(&dev->cmds);
  dev->prog = glCreateProgram();
  dev->vert_shdr = glCreateShader(GL_VERTEX_SHADER);
  dev->frag_shdr = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(dev->vert_shdr, 1, &vertex_shader, 0);
  glShaderSource(dev->frag_shdr, 1, &fragment_shader, 0);
  glCompileShader(dev->vert_shdr);
  glCompileShader(dev->frag_shdr);
  glGetShaderiv(dev->vert_shdr, GL_COMPILE_STATUS, &status);
  assert(status == GL_TRUE);
  glGetShaderiv(dev->frag_shdr, GL_COMPILE_STATUS, &status);
  assert(status == GL_TRUE);
  glAttachShader(dev->prog, dev->vert_shdr);
  glAttachShader(dev->prog, dev->frag_shdr);
  glLinkProgram(dev->prog);
  glGetProgramiv(dev->prog, GL_LINK_STATUS, &status);
  assert(status == GL_TRUE);

  dev->uniform_tex = glGetUniformLocation(dev->prog, "Texture");
  dev->uniform_proj = glGetUniformLocation(dev->prog, "ProjMtx");
  dev->attrib_pos = glGetAttribLocation(dev->prog, "Position");
  dev->attrib_uv = glGetAttribLocation(dev->prog, "TexCoord");
  dev->attrib_col = glGetAttribLocation(dev->prog, "Color");

  {
    /* buffer setup */
    GLsizei vs = sizeof(struct nk_bodge_vertex);
    size_t vp = offsetof(struct nk_bodge_vertex, position);
    size_t vt = offsetof(struct nk_bodge_vertex, uv);
    size_t vc = offsetof(struct nk_bodge_vertex, col);

    glGenBuffers(1, &dev->vbo);
    glGenBuffers(1, &dev->ebo);
    glGenVertexArrays(1, &dev->vao);

    glBindVertexArray(dev->vao);
    glBindBuffer(GL_ARRAY_BUFFER, dev->vbo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, dev->ebo);

    glEnableVertexAttribArray((GLuint)dev->attrib_pos);
    glEnableVertexAttribArray((GLuint)dev->attrib_uv);
    glEnableVertexAttribArray((GLuint)dev->attrib_col);

    glVertexAttribPointer((GLuint)dev->attrib_pos, 2, GL_FLOAT, GL_FALSE, vs, (void*)vp);
    glVertexAttribPointer((GLuint)dev->attrib_uv, 2, GL_FLOAT, GL_FALSE, vs, (void*)vt);
    glVertexAttribPointer((GLuint)dev->attrib_col, 4, GL_UNSIGNED_BYTE, GL_TRUE, vs, (void*)vc);
  }

  glBindTexture(GL_TEXTURE_2D, 0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  glBindVertexArray(0);

  nk_bodge_font_stash_begin(dev);
  nk_bodge_font_stash_end(dev);
  return dev;
}

struct nk_font*
nk_bodge_renderer_font(struct nk_bodge_renderer *renderer)
{
  return &renderer->atlas.default_font->handle;
}

void
nk_bodge_renderer_destroy(struct nk_bodge_renderer *dev)
{
  glDetachShader(dev->prog, dev->vert_shdr);
  glDetachShader(dev->prog, dev->frag_shdr);
  glDeleteShader(dev->vert_shdr);
  glDeleteShader(dev->frag_shdr);
  glDeleteProgram(dev->prog);
  glDeleteTextures(1, &dev->font_tex);
  glDeleteBuffers(1, &dev->vbo);
  glDeleteBuffers(1, &dev->ebo);
  nk_buffer_free(&dev->cmds);
  nk_font_atlas_clear(&dev->atlas);
}

void
nk_bodge_render(struct nk_context* ctx, struct nk_bodge_renderer *dev, int width, int height, float pixel_ratio)
{
  enum nk_anti_aliasing AA = NK_ANTI_ALIASING_ON;
  struct nk_buffer vbuf, ebuf;
  GLfloat ortho[4][4] = {
    {2.0f, 0.0f, 0.0f, 0.0f},
    {0.0f,-2.0f, 0.0f, 0.0f},
    {0.0f, 0.0f,-1.0f, 0.0f},
    {-1.0f,1.0f, 0.0f, 1.0f},
  };
  ortho[0][0] /= (GLfloat)width;
  ortho[1][1] /= (GLfloat)height;

  /* setup global state */
  glEnable(GL_BLEND);
  glBlendEquation(GL_FUNC_ADD);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
  glDisable(GL_CULL_FACE);
  glDisable(GL_DEPTH_TEST);
  glEnable(GL_SCISSOR_TEST);
  glActiveTexture(GL_TEXTURE0);

  /* setup program */
  glUseProgram(dev->prog);
  glUniform1i(dev->uniform_tex, 0);
  glUniformMatrix4fv(dev->uniform_proj, 1, GL_FALSE, &ortho[0][0]);
  glViewport(0,0,(GLsizei)(width * pixel_ratio),(GLsizei)(height * pixel_ratio));
  {
    /* convert from command queue into draw list and draw to screen */
    const struct nk_draw_command *cmd;
    void *vertices, *elements;
    const nk_draw_index *offset = NULL;

    /* allocate vertex and element buffer */
    glBindVertexArray(dev->vao);
    glBindBuffer(GL_ARRAY_BUFFER, dev->vbo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, dev->ebo);

    glBufferData(GL_ARRAY_BUFFER, dev->max_vertex_buffer, NULL, GL_STREAM_DRAW);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, dev->max_element_buffer, NULL, GL_STREAM_DRAW);

    /* load draw vertices & elements directly into vertex + element buffer */
    vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY);
    elements = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_WRITE_ONLY);
    {
      /* fill convert configuration */
      struct nk_convert_config config;
      static const struct nk_draw_vertex_layout_element vertex_layout[] = {
        {NK_VERTEX_POSITION, NK_FORMAT_FLOAT, NK_OFFSETOF(struct nk_bodge_vertex, position)},
        {NK_VERTEX_TEXCOORD, NK_FORMAT_FLOAT, NK_OFFSETOF(struct nk_bodge_vertex, uv)},
        {NK_VERTEX_COLOR, NK_FORMAT_R8G8B8A8, NK_OFFSETOF(struct nk_bodge_vertex, col)},
        {NK_VERTEX_LAYOUT_END}
      };
      NK_MEMSET(&config, 0, sizeof(config));
      config.vertex_layout = vertex_layout;
      config.vertex_size = sizeof(struct nk_bodge_vertex);
      config.vertex_alignment = NK_ALIGNOF(struct nk_bodge_vertex);
      config.null = dev->null;
      config.circle_segment_count = 22;
      config.curve_segment_count = 22;
      config.arc_segment_count = 22;
      config.global_alpha = 1.0f;
      config.shape_AA = AA;
      config.line_AA = AA;

      /* setup buffers to load vertices and elements */
      nk_buffer_init_fixed(&vbuf, vertices, (size_t)dev->max_vertex_buffer);
      nk_buffer_init_fixed(&ebuf, elements, (size_t)dev->max_element_buffer);
      nk_convert(ctx, &dev->cmds, &vbuf, &ebuf, &config);
    }
    glUnmapBuffer(GL_ARRAY_BUFFER);
    glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);

    /* iterate over and execute each draw command */
    nk_draw_foreach(cmd, ctx, &dev->cmds)
      {
        if (!cmd->elem_count) continue;
        glBindTexture(GL_TEXTURE_2D, (GLuint)cmd->texture.id);
        glScissor(
                  (GLint)(cmd->clip_rect.x * pixel_ratio),
                  (GLint)((height - (GLint)(cmd->clip_rect.y + cmd->clip_rect.h)) * pixel_ratio),
                  (GLint)(cmd->clip_rect.w * pixel_ratio),
                  (GLint)(cmd->clip_rect.h * pixel_ratio));
        glDrawElements(GL_TRIANGLES, (GLsizei)cmd->elem_count, GL_UNSIGNED_SHORT, offset);
        offset += cmd->elem_count;
      }
  }

  /* default OpenGL state */
  glUseProgram(0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  glBindVertexArray(0);
  glDisable(GL_BLEND);
  glDisable(GL_SCISSOR_TEST);
}
