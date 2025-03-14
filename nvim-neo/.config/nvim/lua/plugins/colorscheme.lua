return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colorscheme = require("kanagawa")
      colorscheme.setup({transparent = true, theme = "dragon"})
      vim.cmd.colorscheme "kanagawa"
    end,
  },
}
