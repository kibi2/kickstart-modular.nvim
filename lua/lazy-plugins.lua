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
  -- 'adelarsq/neoline.vim', -- status line

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
  -- require 'custom/plugins/gitgutter',  -- gitsigns と同等？

  require 'kickstart/plugins/which-key', -- 入力補完

  require 'kickstart/plugins/telescope', -- あいまい検索

  require 'kickstart/plugins/lspconfig', -- LSP
  require 'custom/plugins/lsp-lines', -- diagnositcs 改行表示

  require 'kickstart/plugins/conform', -- Autoformat

  require 'kickstart/plugins/cmp', -- Autocompletion

  require 'kickstart/plugins/tokyonight', -- colorschemes
  -- require 'custom/plugins/onenord', -- color schemes

  require 'kickstart/plugins/todo-comments', -- Highlight todo, notes, etc in comments

  require 'kickstart/plugins/mini', -- Collection of various small independent plugins/modules

  require 'kickstart/plugins/treesitter', -- Highlight, edit, and navigate code

  require 'custom/plugins/fugitive', -- Git コマンドラッパー

  require 'custom/plugins/hop', -- easy move

  -- require 'custom/plugins/lualine', -- status line : うまく動かない
  -- require 'custom/plugins/incline', -- status line : うまく動かない
  -- require 'custom/plugins/feline', -- status line : エラーが発生する
  -- require 'custom/plugins/galaxyline', -- 使い方が良く分からなない
  -- require 'custom/plugins/heirline', -- 使い方が良く分からなない

  -- require 'custom/plugins/noice', -- コマンドラインフォローティグ表示
  -- require 'custom/plugins/notify', -- notify フローティグ表示 : ウィンドウ移動で邪魔

  require 'custom/plugins/nvim-hlslens', -- 検索強化

  -- require 'custom/plugins/scrollbar', -- scrollbar に情報表示

  require 'custom/plugins/undotree', -- undotree 可視化

  -- 実行ファイルを /mnt/d/kepax/bin に置くこと。でないと異常に遅い。
  -- require 'custom/plugins/im-select', -- IME 自動切換え : WSL だと遅すぎ
  -- require 'custom/plugins/win-ime-con', -- IME 自動切換え : 起動時に遅い
  -- 実行ファイルを /mnt/d/kepax/bin に置くこと。でないと異常に遅い。
  require 'custom/plugins/spzenhan', -- IME 自動切換え : WSLで使える

  require 'custom/plugins/markdown-preview', -- markdown プレビュー : これは使える
  -- require 'custom/plugins/render-markdown', -- markdown プレビュー : これは使える
  -- require 'custom/plugins/previm', -- markdown プレビュー : ブラウザが開かない
  -- require 'custom/plugins/obsidian-bridge', -- markdown プレビュー + obsidian : エラーがでまくる

  require 'custom/plugins/vimdoc-ja', -- 日本語ヘルプ

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug', -- Debug Adapter Protocol client implementation

  -- require 'kickstart.plugins.indent_line', -- Add indentation guides
  require 'custom/plugins/hlchunk', -- indent 表示

  -- require 'kickstart.plugins.lint', -- Linting
  -- require 'kickstart.plugins.autopairs', -- 括弧などを自動で閉じてくれる

  require 'custom/plugins/nvim-tree', -- ファイラー
  -- require 'kickstart.plugins.neo-tree',  -- filer
  -- require 'custom/plugins/neo-tree', -- ファイラー:プレビューでエラーになる
  -- require 'custom/plugins/telescope-filer', -- ファイラー:まだ使いこなせない

  require 'custom/plugins/colorizer', -- 色を背景色で表示する

  -- require 'custom/plugins/colorful-winsep', -- ウィンドウ枠に色を付ける:うまく表示されない

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}, {
  defaults = {
    -- lazy = true,
  },
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
