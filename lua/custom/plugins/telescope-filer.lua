-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  init = function()
    require('telescope').load_extension 'file_browser'
  end,
  keys = {
    {
      mode = 'n',
      '<c-n>',
      '<cmd>Telescope file_browser<cr>',
      desc = 'telescope file browser を起動する',
    },
  },
}
