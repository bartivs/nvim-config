return {
  --  { 'github/copilot.vim' },
  -- {
  --   'olimorris/codecompanion.nvim',
  --   config = function()
  --     require('codecompanion').setup {
  --       adapter = 'copilot',
  --     }
  --   end,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  -- },
  {
    'Exafunction/windsurf.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },

    -- Request completions immediately.
    config = function()
      -- vim.keymap.set('n', '<leader>gc', function()
      --   require('codeium.virtual_text').cycle_or_complete()
      -- end, { desc = '[G]pt [C]omplete' })
      --
      require('codeium').setup {
        virtual_text = {
          enabled = true,
          manual = false,
          map_keys = {
            accept = '<C-a>',
            next = '<C-h>',
            prev = '<C-l>',
            dismiss = '<C-d>',
          },
        },
      }
    end,
  },
}
