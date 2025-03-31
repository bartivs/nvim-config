return {
  { 'github/copilot.vim' },
  {
    'olimorris/codecompanion.nvim',
    config = function()
      require('codecompanion').setup {
        adapter = 'copilot',
      }
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
}
