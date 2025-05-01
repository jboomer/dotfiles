
-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
vim.keymap.set("n", "<leader>Q", vim.diagnostic.setqflist)

-- Fuzzy finding
vim.keymap.set("n", "<C-p>", require("fzf-lua").files)
vim.keymap.set("n", "<C-g>", require("fzf-lua").grep)
vim.keymap.set("n", "<C-l>", require("fzf-lua").live_grep)
vim.keymap.set("n", "<C-\\>", require("fzf-lua").buffers)

-- oil
vim.keymap.set("n", "-", function() require("oil").open() end, { desc = "Open parent directory" })

-- Navigate wrapped lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
