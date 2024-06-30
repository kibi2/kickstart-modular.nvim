-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'shellRaining/hlchunk.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('hlchunk').setup {
      chunk = {
        enable = true,
        priority = 15,
        style = {
          { bg = '#888888', fg = '#888888' },
          -- { bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID 'Whitespace'), 'fg', 'gui') },
          -- { fg = '#806d9c' }, -- normal
          { fg = '#c21f30' }, -- error
        },
        -- use_treesitter = true, -- パフォーマンスの問題
        chars = {
          horizontal_line = '─',
          vertical_line = '│',
          left_top = '╭',
          left_bottom = '╰',
          -- right_arrow = '>',
          right_arrow = '─',
        },
        textobject = '',
        max_file_size = 1024 * 1024,
        error_sign = true,
        -- animation related
        duration = 200,
        delay = 300,
      },
      indent = {
        enable = true,
        priority = 10,
        -- style = { vim.api.nvim_get_hl(0, { name = 'Whitespace' }) },
        style = {
          '#FF8888',
          '#FF7F88',
          '#FFFF88',
          '#88FF88',
          '#88FFFF',
          '#8888FF',
          '#8B88FF',
        },
        use_treesitter = false,
        chars = { '│' },
        ahead_lines = 5,
        delay = 100,
      },
    }
  end,
}
