return {
  {
    'nvim-lualine/lualine.nvim',
     opts = {
       icons_enabled = false,
       theme = 'tokyonight',
       component_separators = '|',
       section_separators = '',
         sections = {
           lualine_a = {'mode'},
           lualine_b = {'branch', 'diff', 'diagnostics'},
           lualine_c = {'filename'},
           lualine_x = {'filetype'},
           lualine_y = {'progress'},
           lualine_z = {'location'}
        },
     },
  },
}
