-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :iLazyi update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  -- 'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  { 'numToStr/Comment.nvim', opts = {} }, -- コメントのトグル：gcc

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'kickstart/plugins/gitsigns', -- 行ごとに追加、変更、削除表示

  require 'kickstart/plugins/which-key', -- 入力補完

  require 'kickstart/plugins/telescope', -- あいまい検索

  require 'kickstart/plugins/lspconfig', -- LSP

  require 'kickstart/plugins/conform', -- Autoformat

  require 'kickstart/plugins/cmp', -- Autocompletion

  require 'kickstart/plugins/tokyonight', -- colorschemes

  require 'kickstart/plugins/todo-comments', -- Highlight todo, notes, etc in comments

  require 'kickstart/plugins/mini', -- Collection of various small independent plugins/modules

  require 'kickstart/plugins/treesitter', -- Highlight, edit, and navigate code

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug', -- Debug Adapter Protocol client implementation
  -- require 'kickstart.plugins.indent_line', -- Add indentation guides
  -- require 'kickstart.plugins.lint', -- Linting
  -- require 'kickstart.plugins.autopairs', -- 括弧などを自動で閉じてくれる
  -- require 'kickstart.plugins.neo-tree',  -- filer

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
  checker = {
    enabled = true, -- プラグインのアップデートを自動的にチェック
  },
  diff = {
    -- cmd = "delta",
    cmd = 'git',
  },
  performance = {
    rtp = {
      -- list any plugins you want to disable here
      disabled_plugins = {
        'gzip',
        'matchit',
        -- "matchparen",
        -- "netrwPlugin",
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
