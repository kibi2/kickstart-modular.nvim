# Plugin
## kickstart
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} },
    'lewis6991/gitsigns.nvim',
    'folke/which-key.nvim',
    'nvim-telescope/telescope.nvim',
    'neovim/nvim-lspconfig',
    'stevearc/conform.nvim',
    'hrsh7th/nvim-cmp',
    'folke/tokyonight.nvim',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    'echasnovski/mini.nvim',
    'nvim-treesitter/nvim-treesitter',
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
  -- { import = 'custom.plugins' },
