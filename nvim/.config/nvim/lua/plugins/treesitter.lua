return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    config = function() 
        local treesitter = require("nvim-treesitter")
        treesitter.setup({})
        local parsers = {
            "bash",
            "c",
            "cpp",
            "diff",
            "dockerfile",
            "git_config",
            "gitcommit",
            "gitignore",
            "html",
            "json5",
            "lua",
            "markdown",
            "python",
            "robot",
            "rst",
            "rust",
            "query",
            "ssh_config",
            "terraform",
            "toml",
            "vim",
            "vimdoc",
            "yaml",
        }

        for _, parser in ipairs(parsers) do
            treesitter.install(parser)
        end

        -- Not every tree-sitter parser is the same as the file type detected
        -- So the patterns need to be registered more cleverly
        local patterns = {}
        for _, parser in ipairs(parsers) do
            local parser_patterns = vim.treesitter.language.get_filetypes(parser)
            for _, pp in pairs(parser_patterns) do
                table.insert(patterns, pp)
            end
        end

        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'

        vim.api.nvim_create_autocmd('FileType', {
            pattern = patterns,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
  },
}
