return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        theme = "auto",
      },
      sections = {
           lualine_a = {"mode"},
           lualine_b = {"branch", "diff", "diagnostics"},
           lualine_c = {"filename"},
           lualine_x = {"filetype"},
           lualine_y = {"progress"},
           lualine_z = {"location"}
      },
    },
  },
}
