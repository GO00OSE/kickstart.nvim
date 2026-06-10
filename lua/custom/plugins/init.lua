-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = {},
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup()
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
      vim.g.mapleader = ' '

      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<leader>e', api.tree.toggle, { desc = 'Toggle File [E]xplorer' })
    end,
  },
  -- {
  --   'numToStr/Comment.nvim',
  --   config = function()
  --     require('Comment').setup()
  --   end,
  --   lazy = false,
  -- },
  {
    'folke/ts-comments.nvim',
    opts = {},
    event = 'VeryLazy',
    enabled = true,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
  },
  {
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup {
        links = {
          style = 'wiki',
          name_is_source = true,
          implicit_extension = 'md',
        },
      }
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    event = 'BufEnter',
    init = function()
      vim.g.barbar_auto_setup = false
    end,

    keys = {
      { '<A-j>', '<Cmd>BufferPrevious<CR>', desc = 'Previous buffer' },
      { '<A-k>', '<Cmd>BufferNext<CR>', desc = 'Next buffer' },
      { '<A-S-j>', '<Cmd>BufferMovePrevious<CR>', desc = 'Move buffer left' },
      { '<A-S-k>', '<Cmd>BufferMoveNext<CR>', desc = 'Move buffer right' },
      { '<A-1>', '<Cmd>BufferGoto 1<CR>', desc = 'Buffer 1' },
      { '<A-2>', '<Cmd>BufferGoto 2<CR>', desc = 'Buffer 2' },
      { '<A-3>', '<Cmd>BufferGoto 3<CR>', desc = 'Buffer 3' },
      { '<A-4>', '<Cmd>BufferGoto 4<CR>', desc = 'Buffer 4' },
      { '<A-5>', '<Cmd>BufferGoto 5<CR>', desc = 'Buffer 5' },
      { '<A-c>', '<Cmd>BufferClose<CR>', desc = 'Close buffer' },
      { '<A-p>', '<Cmd>BufferPin<CR>', desc = 'Pin buffer' },
    },

    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released},
  },
}
