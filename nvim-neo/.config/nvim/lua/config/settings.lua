-- Set highlight on search
vim.opt.hlsearch = false

-- Make line numbers default
vim.opt.number = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- Tab settings
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = -1
vim.opt.tabstop = 4

-- Highlight cursor line
vim.opt.cursorline = true

-- Yank to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Full color support
vim.opt.termguicolors = true

-- Diagnostic settings
vim.diagnostic.config {
  virtual_text = false,
  update_in_insert = true,
}
