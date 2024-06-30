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
          { bg = '#CCCCCC', fg = '#CCCCCC' },
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
          '#880000', --1
          '#888800', --3
          '#008888', --5
          '#887800', --2
          '#008800', --4
          '#000088', --6
          '#0B0088', --7
        },
        use_treesitter = false,
        chars = { '│' },
        ahead_lines = 5,
        delay = 100,
      },
    }
  end,
}
