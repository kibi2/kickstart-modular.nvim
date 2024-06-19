-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  -- Short plugin url. 
  'nvim-tree/nvim-tree.lua',
  -- lazy = false,
  -- A list of plugin names or plugin specs that should be loaded when the plugin loads. 
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim'
  },

  -- init functions are always executed during startup
  init = function()
    -- disable netrw at the very start of your init.lua
    vim.api.nvim_set_var('loaded_netrw', 1)
    vim.api.nvim_set_var('loaded_netrwPlugin', 1)
    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
  end,

  -- The table will be passed to the Plugin.config() function. 
  opts = {
    sort_by = 'extension',
    view = {
      width = '20%',
      side = 'right',
      signcolumn = 'yes',  -- yes, auto, no
    },
    sort = {
      sorter = "case_sensitive",
    },
    renderer = {
      -- group_empty = true,
      highlight_git = true,
      highlight_opened_files = 'all', -- none, icon, name, all
      icons = {
        glyphs = {
          git = {
            unstaged = '!',
            renamed = '»',
            untracked = '?',
            deleted = '✘',
            staged = '✓',
            unmerged = '',
            ignored = '◌',
          },
        },
      },
    },
    actions = {
      expand_all = {
        max_folder_discovery = 100,
        exclude = { '.git', 'target', 'build' },
      },
    },
    filters = {
      dotfiles = true,
    },
    -- on_attach = 'default',
    -- on_attach = require('extensions.nvim-tree-actions').on_attach,

  },

  -- Lazy-load on key mapping
  keys = {
    {
      mode = "n",
      "<C-n>",
      "<cmd>NvimTreeToggle<CR>",
      desc = "NvimTreeをトグルする",
    },
  },
}
