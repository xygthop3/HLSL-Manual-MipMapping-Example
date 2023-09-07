gpu_set_tex_filter(true);
uniMipLevel = shader_get_uniform(Shader1, "uniMipLevel");

shader_set(Shader1);
  shader_set_uniform_i(uniMipLevel, 4);
  draw_sprite(Sprite0, -1, 0,0);
shader_reset();