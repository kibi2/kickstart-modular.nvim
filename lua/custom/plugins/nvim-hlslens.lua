-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'kevinhwang91/nvim-hlslens',
  keys = {
    {
      mode = 'n',
      'n',
      "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    {
      mode = 'n',
      'N',
      "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    -- vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    {
      mode = 'n',
      '*',
      "*<Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    {
      mode = 'n',
      '#',
      "#<Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    {
      mode = 'n',
      'g*',
      "g*<Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    {
      mode = 'n',
      'g#',
      "g#<Cmd>lua require('hlslens').start()<CR>",
      noremap = true,
      silent = true,
    },
    { -- run `:nohlsearch` and export results to quickfix
      mode = { 'n', 'x' },
      '<Leader>L',
      function()
        vim.schedule(function()
          if require('hlslens').exportLastSearchToQuickfix() then
            vim.cmd 'cw'
          end
        end)
        return ':noh<CR>'
      end,
      expr = true,
      desc = '[L]ast Search To Quickfix',
    },
  },
}
