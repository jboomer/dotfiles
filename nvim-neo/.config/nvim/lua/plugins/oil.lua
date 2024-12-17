return {
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', function() require('oil').open() end, { desc = 'Open parent directory' })
    end,
  },
}
